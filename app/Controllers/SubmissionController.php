<?php

namespace App\Controllers;

class SubmissionController extends BaseController
{
    public $table_name = 'submission';
    public $columns = ['title', 'deadline'];
    public $rules = [
        'title'    => 'required|string|max_length[100]',
        'deadline' => 'required|valid_date',
    ];

    public $error_messages = [
        'name' => [
            'required'   => 'Submission title is required.',
            'string'     => 'Submission title must be a string.',
            'max_length' => 'Submission title must be less than or equal to 100 characters.',
        ],
        'deadline' => [
            'required'   => 'Submission date is required.',
            'valid_date' => 'Submission date must be a valid date. ',
        ],
    ];
}
