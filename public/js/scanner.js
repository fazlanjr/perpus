document.addEventListener("DOMContentLoaded", function () {
    async function startScanner() {
        codeReader = new ZXing.BrowserBarcodeReader();

        try {
            const isExist = document.getElementById("video") || false;
            if (!isExist) {
                return;
            }
            const input = document.getElementById("barcodeinput") || false;
            if (!input) {
                return;
            }
            const form = document.getElementById("formbarcode") || false;
            if (!form) {
                return;
            }
            const result = await codeReader.decodeOnceFromVideoDevice(
                undefined,
                "video"
            );
            console.log(
                "Barcode detected and processed : [" + result.text + "]",
                result
            );
            input.value = result.text;
            setTimeout(() => {
                // form.submit()
            }, 500);
        } catch (err) {
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
