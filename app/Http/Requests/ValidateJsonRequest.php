<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ValidateJsonRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public static function rules(): array
    {
        return [
            "data" => "required|array",
            "data.*.id_buku" => "required|numeric",
            "tanggal_kembali" => "required|date",
            "id_siswa" => "required|numeric"
        ];
    }
    public function messages(): array
    {
        return [
            "data" => "required|array",
            "id_siswa" => "required|numeric",
            "data.*.id_buku" => "required|numeric",
            "tanggal_kembali" => "required|date",
        ];
    }
}
