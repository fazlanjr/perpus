<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Laravel\Scout\Searchable;

class Buku extends Model
{
    use HasFactory;
    use Searchable;

    protected $table = 'buku';
    protected $primaryKey = 'id_buku';
    protected $fillable = [
        'kode_buku',
        'nama_buku',
        'penerbit',
        'rak',
        'stok_buku',
        'foto_buku',
    ];
    public function toSearchableArray(): array
    {
        return [
            'nama_buku' => $this->nama_buku,
            'penerbit' => $this->penerbit,
            'id_buku' => $this->primaryKey
        ];
    }

}
