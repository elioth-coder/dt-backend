<?php

namespace App\Controllers;

class SubmissionFileController extends BaseController
{
    public $table_name = 'submission_file';
    public $columns = ['file', 'submission_id'];
    public $rules = [
        'file' => 'required|string',
        'submission_id' => 'required|numeric',
    ];

    public $error_messages = [
        'file' => [
            'required' => 'File name is required.',
            'string'   => 'File name must be a string.',
        ],
        'submission_id' => [
            'required' => 'Document submission id is required.',
            'numeric'  => 'Document submission id must be numeric.',
        ],
    ];
}
