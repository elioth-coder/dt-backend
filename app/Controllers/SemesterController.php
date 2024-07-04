<?php

namespace App\Controllers;

class SemesterController extends BaseController
{
    public $table_name = 'semester';
    public $columns = ['title', 'semester', 'academic_year'];
    public $rules = [
        'title'         => 'required|string|max_length[60]',
        'semester'      => 'required|in_list[1st,2nd,Summer]',
        'academic_year' => 'required|string|max_length[9]',
    ];

    public $error_messages = [
        'title' => [
            'required'   => 'Title is required.',
            'string'     => 'Title must be a string.',
            'max_length' => 'Title must be less than or equal to 9 characters.',
        ],
        'semester' => [
            'required'   => 'Semester is required.',
            'string'     => 'Semester must be a string.',
            'in_list'    => 'Semester can be of the following values: 1st, 2nd, Summer',
        ],
        'academic_year' => [
            'required'   => 'Academic year is required.',
            'string'     => 'Academic year must be a string.',
            'max_length' => 'Academic year must be less than or equal to 9 characters.',
        ],
    ];
}
