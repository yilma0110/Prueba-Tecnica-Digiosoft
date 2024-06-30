<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');

//Grupo de rutas para gestionar mi api: http://localhost:8080/api
$routes->group('api', ['namespace' => 'App\Controllers\Api'], function($routes){
    $routes->get('clientes', 'ClienteController::getAll');
    $routes->post('clientes/crear', 'ClienteController::create');
    $routes->get('clientes/obtenerPorId/(:num)', 'ClienteController::getById/$1');
    $routes->put('clientes/editar/(:num)', 'ClienteController::update/$1');
    $routes->delete('clientes/eliminar/(:num)', 'ClienteController::delete/$1');
});
