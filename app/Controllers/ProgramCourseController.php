<?php

namespace App\Controllers;

class ProgramCourseController extends BaseController
{
    public $table_name = 'program_course';
    public $columns = ['code','degree','major','program'];
    public $rules = [
        'code'    => 'required|string|max_length[15]',
        'degree'  => 'required|string|max_length[120]',
        'major'   => 'required|string|max_length[100]',
        'program' => 'required|string|max_length[15]',
    ];

    public $error_messages = [
        'code' => [
            'required'   => 'Code is required.',
            'string'     => 'Code must be a string.',
            'max_length' => 'Code must be less than or equal to 15 characters.',
        ],
        'degree' => [
            'required'   => 'Degree is required.',
            'string'     => 'Degree must be a string.',
            'max_length' => 'Degree must be less than or equal to 120 characters.',
        ],
        'major' => [
            'required'   => 'Major is required.',
            'string'     => 'Major must be a string.',
            'max_length' => 'Major must be less than or equal to 100 characters.',
        ],
        'program' => [
            'required'   => 'Program is required.',
            'string'     => 'Program must be a string.',
            'max_length' => 'Program must be less than or equal to 15 characters.',
        ],
    ];
}
