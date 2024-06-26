<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */

$routes->get('/', 'HomeController::index');

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

    $routes->get('submission', 'SubmissionController::get_all');
    $routes->get('submission/delete/(:num)', 'SubmissionController::delete/$1');
    $routes->get('submission/(:num)', 'SubmissionController::get/$1');
    $routes->post('submission/add', 'SubmissionController::add');
    $routes->post('submission/update', 'SubmissionController::update');

    $routes->post('submission_file/add', 'SubmissionFileController::add');
    $routes->get('submission_file/(:num)', 'SubmissionFileController::get/$1');
    $routes->get('submission_file/get_where', 'SubmissionFileController::get_where');
    $routes->post('submission_assigned/add', 'SubmissionAssignedController::add');
    $routes->get('submission_assigned/(:num)', 'SubmissionAssignedController::get/$1');
    $routes->get('submission_assigned/get_where', 'SubmissionAssignedController::get_where');

    $routes->post('submission_file_status/add', 'SubmissionFileStatusController::add');
    $routes->post('submission_file_status/update', 'SubmissionFileStatusController::update');
    $routes->get('submission_file_status/delete/(:num)', 'SubmissionFileStatusController::delete/$1');
    $routes->post('submission_file_status/get_value', 'SubmissionFileStatusController::get_value');
    $routes->post('submission_file_status/get_by_form', 'SubmissionFileStatusController::get_by_form');

    $routes->get('subject', 'SubjectController::get_all');
    $routes->get('subject/delete/(:num)', 'SubjectController::delete/$1');
    $routes->get('subject/(:num)', 'SubjectController::get/$1');
    $routes->post('subject/add', 'SubjectController::add');
    $routes->post('subject/update', 'SubjectController::update');
    $routes->get('subject/count', 'SubjectController::count');

    $routes->get('semester', 'SemesterController::get_all');
    $routes->get('semester/delete/(:num)', 'SemesterController::delete/$1');
    $routes->get('semester/(:num)', 'SemesterController::get/$1');
    $routes->post('semester/add', 'SemesterController::add');
    $routes->post('semester/update', 'SemesterController::update');
    $routes->get('semester/count', 'SemesterController::count');

    $routes->get('semester_teacher', 'SemesterTeacherController::get_all');
    $routes->get('semester_teacher/delete/(:num)', 'SemesterTeacherController::delete/$1');
    $routes->get('semester_teacher/(:num)', 'SemesterTeacherController::get/$1');
    $routes->post('semester_teacher/add', 'SemesterTeacherController::add');
    $routes->post('semester_teacher/update', 'SemesterTeacherController::update');
    $routes->get('semester_teacher/count', 'SemesterTeacherController::count');
    $routes->get('semester_teacher/get_where', 'SemesterTeacherController::get_where');
    $routes->post('semester_teacher/delete_by_form', 'SemesterTeacherController::delete_by_form');

    $routes->get('schedule', 'ScheduleController::get_all');
    $routes->get('schedule/delete/(:num)', 'ScheduleController::delete/$1');
    $routes->get('schedule/(:num)', 'ScheduleController::get/$1');
    $routes->post('schedule/add', 'ScheduleController::add');
    $routes->post('schedule/update', 'ScheduleController::update');
    $routes->post('schedule/get_by_form', 'ScheduleController::get_by_form');
});
