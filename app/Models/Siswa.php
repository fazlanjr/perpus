<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Laravel\Scout\Searchable;

class Siswa extends Model
{
    use HasFactory;
    use Searchable;

    protected $table = 'siswa';
    protected $primaryKey = 'id_siswa';
    protected $fillable = [
        'nis',
        'barcode',
        'nama_siswa',
        'jenis_kelamin',
        'tgl_lahir',
        'kelas',
        'foto',
        ];
        public function toSearchableArray(): array
    {
        return [
            'nama_siswa' => $this->nama_siswa,
            'nis' => $this->nis,
            'id_siswa' => $this->primaryKey,
            'barcode' => $this->barcode
        ];
    }
}
