<?php

namespace App\Controllers;

class SignatoryController extends BaseController
{
    public $table_name = 'signatory';
    public $columns = ['content', 'college', 'document'];
    public $rules = [
        'content'  => 'required|string|max_length[10000]',
        'college'  => 'required|string|max_length[10]',
        'document' => 'required|string|max_length[30]',
    ];

    public $error_messages = [
        'content' => [
            'required'   => 'Content is required.',
            'string'     => 'Content must be a string.',
            'max_length' => 'Content must be less than or equal to 1000 characters.',
        ],
        'college' => [
            'required'   => 'College is required.',
            'string'     => 'College must be a string.',
            'max_length' => 'College must be less than or equal to 10 characters.',
        ],
        'document' => [
            'required'   => 'Document is required.',
            'string'     => 'Document must be a string.',
            'max_length' => 'Document must be less than or equal to 30 characters.',
        ],
    ];
}
