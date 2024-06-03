<?php

use App\Http\Controllers\DetallesPedidosController;
use App\Http\Controllers\PedidosCompraController;
use App\Http\Controllers\UsuariosController;
use App\Http\Controllers\ProductosController;
use App\Http\Controllers\ProductoTallaController;
use App\Http\Controllers\TallaController;
use App\Http\Controllers\CarritoController;
use App\Http\Controllers\CompraController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;



Route::get('/', function () {
    return view('home');
});

Route::get('/about', function () {
    return view('about');
});

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/index', [ProductosController::class, 'index'])->name('productos.index');
Route::get('/index/{id}', [ProductosController::class, 'show'])->name('productos.show');

Auth::routes();

// Rutas para administradores

Route::group(['middleware' => ['auth', 'is_admin']], function () {

    Route::get('/admin', 'App\Http\Controllers\AdminController@index')->name('admin.index');

    //PRODUCTOS

    Route::get('/admin/productos/{id}/edit', [ProductosController::class, 'edit'])->name('productos.edit');
    Route::put('/admin/productos/{id}', [ProductosController::class, 'update'])->name('productos.update');
    Route::get('/admin/productos/create', [ProductosController::class, 'create'])->name('productos.create');
    Route::post('/admin/productos', [ProductosController::class, 'store'])->name('productos.store');
    Route::delete('/admin/productos/{id}/destroy', [ProductosController::class, 'destroy'])->name('productos.destroy');

    //PEDIDOS-COMPRA

    Route::get('/admin/pedidoscompra/{id}/edit', [PedidosCompraController::class, 'edit'])->name('pedidoscompra.edit');
    Route::put('/admin/pedidoscompra/{id}', [PedidosCompraController::class, 'update'])->name('pedidoscompra.update');
    Route::get('/admin/pedidoscompra/create', [PedidosCompraController::class, 'create'])->name('pedidoscompra.create');
    Route::post('/admin/pedidoscompra', [PedidosCompraController::class, 'store'])->name('pedidoscompra.store');
    Route::delete('/admin/pedidoscompra/{id}/destroy', [PedidosCompraController::class, 'destroy'])->name('pedidoscompra.destroy');

    //USUARIOS

    Route::get('/admin/usuarios/{id}/edit', [UsuariosController::class, 'edit'])->name('usuarios.edit');
    Route::put('/admin/usuarios/{id}', [UsuariosController::class, 'update'])->name('usuarios.update');
    Route::get('/admin/usuarios/create', [UsuariosController::class, 'create'])->name('usuarios.create');
    Route::post('/admin/usuarios', [UsuariosController::class, 'store'])->name('usuarios.store');
    Route::delete('/admin/usuarios/{id}/destroy', [UsuariosController::class, 'destroy'])->name('usuarios.destroy');

    //DETALLES-PEDIDOS

    Route::get('/admin/detallespedidos/{id}/edit', [DetallesPedidosController::class, 'edit'])->name('detallespedidos.edit');
    Route::put('/admin/detallespedidos/{id}', [DetallesPedidosController::class, 'update'])->name('detallespedidos.update');
    Route::get('/admin/detallespedidos/create', [DetallesPedidosController::class, 'create'])->name('detallespedidos.create');
    Route::post('/admin/detallespedidos', [DetallesPedidosController::class, 'store'])->name('detallespedidos.store');
    Route::delete('/admin/detallespedidos/{id}/destroy', [DetallesPedidosController::class, 'destroy'])->name('detallespedidos.destroy');

    //TALLAS

    Route::get('/admin/tallas/{id}/edit', [TallaController::class, 'edit'])->name('tallas.edit');
    Route::put('/admin/tallas/{id}', [TallaController::class, 'update'])->name('tallas.update');
    Route::get('/admin/tallas/create', [TallaController::class, 'create'])->name('tallas.create');
    Route::post('/admin/tallas', [TallaController::class, 'store'])->name('tallas.store');
    Route::delete('/admin/tallas/{id}/destroy', [TallaController::class, 'destroy'])->name('tallas.destroy');

    //PRODUCTOS-TALLA

    Route::get('/admin/producto_talla/{id}/edit', [ProductoTallaController::class, 'edit'])->name('producto_talla.edit');
    Route::put('/admin/producto_talla/{id}', [ProductoTallaController::class, 'update'])->name('producto_talla.update');
    Route::get('/admin/producto_talla/create', [ProductoTallaController::class, 'create'])->name('producto_talla.create');
    Route::post('/admin/producto_talla', [ProductoTallaController::class, 'store'])->name('producto_talla.store');
    Route::delete('/admin/producto_talla/{id}/destroy', [ProductoTallaController::class, 'destroy'])->name('producto_talla.destroy');

   

});
    // Rutas para usuarios normales
        Route::group(['middleware' => 'auth'], function () {
        Route::get('/index', [ProductosController::class, 'index'])->name('index');

        Route::get('/profile', [UsuariosController::class, 'showProfile'])->name('usuarios.showProfile');
        Route::get('/profile/edit', [UsuariosController::class, 'editProfile'])->name('usuarios.editProfile');
        Route::put('/profile/update', [UsuariosController::class, 'updateProfile'])->name('usuarios.updateProfile');

        // Rutas para el carrito de compras
        Route::get('/carrito/mostrar', [CarritoController::class, 'mostrarCarrito'])->name('carrito.mostrar');
        Route::post('/agregar-al-carrito/{idProducto}', [CarritoController::class, 'agregarAlCarrito'])->name('carrito.agregar');
        Route::delete('/eliminar-del-carrito/{id}', [CarritoController::class, 'eliminarDelCarrito'])->name('carrito.eliminar');
        Route::get('/compra/confirmacion', [CompraController::class, 'confirmacion'])->name('compra.confirmacion');
        Route::post('/compra/confirmar', [CompraController::class, 'confirmarCompra'])->name('compra.confirmar');

    });