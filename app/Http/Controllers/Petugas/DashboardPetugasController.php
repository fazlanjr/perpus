<?php

namespace App\Http\Controllers\Petugas;

use App\Http\Controllers\Controller;
use App\Models\Detail;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Request as FacadesRequest;

class DashboardPetugasController extends Controller
{
    public function index()
    {

        return view('petugas.dashboard.dashboard');
    }
    public function most()
    {
        $startOfMonth = Carbon::now()->startOfMonth();
        $endOfMonth = Carbon::now()->endOfMonth();
        $frequentCustomers = Detail::join('pinjambuku', 'pinjambuku.detailid', '=', 'detailpinjam.id')
            ->join('siswa', 'siswa.id_siswa', '=', 'pinjambuku.id_siswa')
            ->select('pinjambuku.id_siswa AS id_siswa', 'siswa.nama_siswa AS nama', DB::raw('COUNT(pinjambuku.id_pinjam) AS total'))->whereBetween("detailpinjam.created_at", [$startOfMonth, $endOfMonth])
            ->groupBy('pinjambuku.id_siswa')
            ->orderBy('total', 'desc')->take(5)
            ->get();


        return response()->json($frequentCustomers);
    }
    public function show()
    {
        $now = Carbon::now();
        $fiveMonthsAgo = $now->copy()->subMonths(4)->startOfMonth();

        $months = [];
        for ($i = 0; $i < 5; $i++) {
            $month = $fiveMonthsAgo->copy()->addMonths($i);
            $months[] = [
                'year' => $month->year,
                'month' => $month->month,
                'label' => $month->format('Y-m')
            ];
        }

        $results = Detail::select(
            DB::raw('YEAR(created_at) as year'),
            DB::raw('MONTH(created_at) as month'),
            DB::raw('COUNT(*) as total')
        )->where('created_at', '>=', $fiveMonthsAgo)
            ->groupBy('year', 'month')
            ->orderBy('year', 'desc')
            ->orderBy('month', 'desc')
            ->get()
            ->keyBy(function ($item) {
                return $item->year . '-' . $item->month;
            });
        $monthlyData = [];
        foreach ($months as $month) {
            $key = $month['year'] . '-' . $month['month'];
            $monthlyData[] = [
                'year' => $month['year'],
                'month' => $month['month'],
                'total' => $results->has($key) ? $results[$key]->total : 0
            ];
        }

        return response()->json($monthlyData);
    }
}
