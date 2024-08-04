document.addEventListener("DOMContentLoaded", function () {
    const audio = document.createElement("audio");
    audio.src = "/beep.mp3";
    console.log(audio);
    async function startScanner() {
        codeReader = new ZXing.BrowserBarcodeReader();

        try {
            // }
            const result = await codeReader.decodeOnceFromVideoDevice(
                undefined,
                "video"
            );
            console.log(
                "Barcode detected and processed : [" + result.text + "]",
                result
            );
            const form = document.getElementById('formbarcode')
            // alert(result)
            document.getElementById("barcodeinput").value = result.text;
            audio.play();
            setTimeout(() => {
                form.submit();
            }, 500);
        } catch (err) {
            // alert(err)
            console.error(err);
        }
    }

    function stopScanner() {
        if (codeReader) {
            codeReader.reset();
        }
    }
    const barcodebtn = document.getElementById("barcodebtn");
    barcodebtn.addEventListener("click", () => startScanner());

    const btns = document.querySelectorAll(".closebtn");
    btns.forEach((e) => {
        e.addEventListener("click", () => {
            stopScanner();
        });
    });
});
