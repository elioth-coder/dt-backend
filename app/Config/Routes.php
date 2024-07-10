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

    $routes->post('faculty/add', 'FacultyController::add');
    $routes->post('faculty/update', 'FacultyController::update');
    $routes->get('faculty/delete/(:num)', 'FacultyController::delete/$1');
    $routes->get('faculty', 'FacultyController::get_all');
    $routes->get('faculty/(:num)', 'FacultyController::get/$1');
    $routes->get('faculty/count', 'FacultyController::count');

    $routes->post('document_trail/add', 'DocumentTrailController::add');
    $routes->post('document_trail/update', 'DocumentTrailController::update');
    $routes->get('document_trail/delete/(:num)', 'DocumentTrailController::delete/$1');
    $routes->get('document_trail', 'DocumentTrailController::get_all');
    $routes->get('document_trail/(:num)', 'DocumentTrailController::get/$1');
    $routes->get('document_trail/count', 'DocumentTrailController::count');

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
    $routes->get('subject/programs', 'SubjectController::get_programs');
    $routes->get('subject/program_subjects/(:any)', 'SubjectController::get_program_subjects/$1');

    $routes->get('semester', 'SemesterController::get_all');
    $routes->get('semester/delete/(:num)', 'SemesterController::delete/$1');
    $routes->get('semester/(:num)', 'SemesterController::get/$1');
    $routes->post('semester/add', 'SemesterController::add');
    $routes->post('semester/update', 'SemesterController::update');
    $routes->get('semester/count', 'SemesterController::count');

    $routes->get('signatory', 'SignatoryController::get_all');
    $routes->get('signatory/delete/(:num)', 'SignatoryController::delete/$1');
    $routes->get('signatory/(:num)', 'SignatoryController::get/$1');
    $routes->post('signatory/add', 'SignatoryController::add');
    $routes->post('signatory/update', 'SignatoryController::update');
    $routes->get('signatory/count', 'SignatoryController::count');
    $routes->get('signatory/get_where', 'SignatoryController::get_where');
    $routes->post('signatory/get_by_form', 'SignatoryController::get_by_form');

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
    $routes->get('schedule/get_sections', 'ScheduleController::get_sections');
    $routes->get('schedule/get_rooms', 'ScheduleController::get_rooms');
});
