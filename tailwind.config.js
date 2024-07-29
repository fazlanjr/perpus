/** @type {import('tailwindcss').Config} */
module.exports = {
    content: [
        "./resources/views/petugas/peminjaman/peminjaman_cek.blade.php",
        "./public/js/*.js",
    ],
    theme: {
        extend: {},
    },
    plugins: [require("flowbite/plugin")],
};
