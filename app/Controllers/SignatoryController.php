<?php

namespace App\Controllers;

class SignatoryController extends BaseController
{
    public $table_name = 'signatory';
    public $columns = ['content', 'college', 'document', 'program'];
    public $rules = [
        'college'  => 'required|string|max_length[10]',
        'program'  => 'required|string|max_length[15]',
        'document' => 'required|string|max_length[30]',
        'content'  => 'required|string|max_length[10000]',
    ];

    public $error_messages = [
        'college' => [
            'required'   => 'College is required.',
            'string'     => 'College must be a string.',
            'max_length' => 'College must be less than or equal to 10 characters.',
        ],
        'program' => [
            'required'   => 'Program is required.',
            'string'     => 'Program must be a string.',
            'max_length' => 'Program must be less than or equal to 10 characters.',
        ],
        'document' => [
            'required'   => 'Document is required.',
            'string'     => 'Document must be a string.',
            'max_length' => 'Document must be less than or equal to 30 characters.',
        ],
        'content' => [
            'required'   => 'Content is required.',
            'string'     => 'Content must be a string.',
            'max_length' => 'Content must be less than or equal to 1000 characters.',
        ],
    ];
}
