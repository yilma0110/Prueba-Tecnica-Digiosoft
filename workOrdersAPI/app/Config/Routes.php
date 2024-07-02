<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');

//Grupo de rutas para gestionar mi api: http://localhost:8080/api
$routes->group('api', ['namespace' => 'App\Controllers\Api'], function($routes){
    //Clientes
    $routes->get('clientes', 'ClienteController::getAll');
    $routes->post('clientes/crear', 'ClienteController::create');
    $routes->get('clientes/obtenerPorId/(:num)', 'ClienteController::getById/$1');
    $routes->put('clientes/editar/(:num)', 'ClienteController::update/$1');
    $routes->delete('clientes/eliminar/(:num)', 'ClienteController::delete/$1');

    //Tecnicos
    $routes->get('tecnicos', 'TecnicoController::getAll');
    $routes->post('tecnicos/crear', 'TecnicoController::create');
    $routes->get('tecnicos/obtenerPorId/(:num)', 'TecnicoController::getById/$1');
    $routes->put('tecnicos/editar/(:num)', 'TecnicoController::update/$1');
    $routes->delete('tecnicos/eliminar/(:num)', 'TecnicoController::delete/$1');

    //Work Orders
    $routes->get('works', 'WorkorderController::getAll');
    $routes->post('works/crear', 'WorkorderController::create');
    $routes->get('works/obtenerPorId/(:num)', 'WorkorderController::getById/$1');
    $routes->put('works/editar/(:num)', 'WorkorderController::update/$1');
    $routes->delete('works/eliminar/(:num)', 'WorkorderController::delete/$1');

    $routes->get('works/worksPorTecnico/(:num)', 'WorkorderController::getWorksByTecnico/$1');
});
