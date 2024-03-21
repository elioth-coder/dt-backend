<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->group('api', ['filter' => 'cors'], static function($routes) {
    $routes->get('me', 'UserController::me');
    $routes->get('logout', 'UserController::logout');
    $routes->post('login', 'UserController::login');
});

$routes->group('api', ['filter' => 'authenticated'], static function($routes) {
    $routes->post('location/add', 'LocationController::add');
    $routes->post('location/update', 'LocationController::update');
    $routes->get('location/delete/(:num)', 'LocationController::delete/$1');
    $routes->get('location', 'LocationController::get_all');
    $routes->get('location/(:num)', 'LocationController::get/$1');
    $routes->get('location/count', 'LocationController::count');

    $routes->post('recipient/add', 'RecipientController::add');
    $routes->post('recipient/update', 'RecipientController::update');
    $routes->get('recipient/delete/(:num)', 'RecipientController::delete/$1');
    $routes->get('recipient', 'RecipientController::get_all');
    $routes->get('recipient/(:num)', 'RecipientController::get/$1');
    $routes->get('recipient/count', 'RecipientController::count');

    $routes->post('document/add', 'DocumentController::add');
    $routes->post('document/update', 'DocumentController::update');
    $routes->get('document/delete/(:num)', 'DocumentController::delete/$1');
    $routes->get('document', 'DocumentController::get_all');
    $routes->get('document/(:num)', 'DocumentController::get/$1');
    $routes->get('document/trail/(:num)', 'DocumentController::get_trail/$1');
    $routes->get('document/count', 'DocumentController::count');

    $routes->post('document_trail/add', 'DocumentTrailController::add');
    $routes->post('document_trail/update', 'DocumentTrailController::update');
    $routes->get('document_trail/delete/(:num)', 'DocumentTrailController::delete/$1');
    $routes->get('document_trail', 'DocumentTrailController::get_all');
    $routes->get('document_trail/(:num)', 'DocumentTrailController::get/$1');
});
