<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Models\Talla;

class TallaController extends Controller
{
    public function show($id)
    {
        $talla = Talla::findOrFail($id);
        return view('tallas.show', compact('talla'));
    }

    public function destroy($id)
    {
        try {
            $talla = Talla::findOrFail($id);
            $talla->delete();
            return redirect()->route('admin.index')->with('success', 'Talla eliminada exitosamente');
        } catch (\Exception $e) {
            return redirect()->route('tallas.destroy', $id)->with('error', $e->getMessage());
        }
    }

    public function create()
    {
        return view('tallas.create');
    }

    public function store(Request $request)
    {
        try {
            $request->validate([
                'nom_talla' => 'required',
            ]);

            Talla::create($request->all());

            return redirect()->route('admin.index')->with('success', 'Talla creada exitosamente');
        } catch (\Exception $e) {
            return redirect()->route('tallas.create')->with('error', $e->getMessage());
        }
    }

    public function edit($id)
    {
        $talla = Talla::findOrFail($id);
        return view('tallas.edit', compact('talla'));
    }

    public function update(Request $request, $id)
    {
        try {
            $talla = Talla::findOrFail($id);

            $request->validate([
                'nom_talla' => 'required',
            ]);

            $talla->update($request->all());

            return redirect()->route('admin.index')->with('success', 'Talla actualizada exitosamente');
        } catch (\Exception $e) {
            return redirect()->route('tallas.edit', $id)->with('error', $e->getMessage());
        }
    }
}
