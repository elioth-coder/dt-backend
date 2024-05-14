<?php

namespace App\Controllers;

class SubjectController extends BaseController
{
    public $table_name = 'subject';
    public $columns = ['code', 'title', 'year_level', 'semester', 'program'];
    public $rules = [
        'code'       => 'required|string|max_length[15]',
        'title'      => 'required|string|max_length[120]',
        'year_level' => 'required|integer|in_list[1,2,3,4,5]',
        'semester'   => 'required|in_list[1st,2nd,Summer]',
        'program'    => 'required|string|max_length[10]',
    ];

    public $error_messages = [
        'code' => [
            'required'   => 'Submission is required.',
            'string'     => 'Submission must be a string.',
            'max_length' => 'Submission must be less than or equal to 15 characters.',
        ],
        'title' => [
            'required'   => 'Title is required.',
            'string'     => 'Title must be a string.',
            'max_length' => 'Title must be less than or equal to 120 characters.',
        ],
        'year_level' => [
            'required'   => 'Year level is required.',
            'integer'    => 'Year level must be an integer.',
            'in_list'    => 'Year level can be of the following values: 1, 2, 3, 4, 5',
        ],
        'semester' => [
            'required'   => 'Semester is required.',
            'string'     => 'Semester must be a string.',
            'in_list'    => 'Semester can be of the following values: 1st, 2nd, Summer',
        ],
        'program' => [
            'required'   => 'Program is required.',
            'string'     => 'Program must be a string.',
            'max_length' => 'Program must be less than or equal to 15 characters.',
        ],
    ];
}
