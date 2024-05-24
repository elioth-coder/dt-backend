<?php

namespace App\Controllers;

class DocumentTrailController extends BaseController
{
    public $table_name = 'document_trail';
    public $has_photo = false;
    public $columns = ['location_id','recipient_id','remarks','document_id', 'action_needed', 'status'];
    public $rules = [
        'location_id'  => 'required|integer',
        'recipient_id' => 'required|integer',
        'remarks' => 'string|max_length[255]',
        'status' => 'string|max_length[20]',
        'action_needed' => 'string|max_length[60]',
        'document_id'  => 'required|integer',
    ];

    public $error_messages = [
        'location_id' => [
            'required'   => 'Location id is required.',
            'string'     => 'Location id must be an integer.',
        ],
        'recipient_id' => [
            'required'   => 'Recipient id is required.',
            'string'     => 'Recipient id must be an integer.',
        ],
        'remarks' => [
            'string'     => 'Remarks must be a string.',
            'max_length' => 'Remarks must be less than or equal to 255 characters.',
        ],        
        'status' => [
            'string'     => 'Status must be a string.',
            'max_length' => 'Status must be less than or equal to 20 characters.',
        ],
        'action_needed' => [
            'string'     => 'Action needed must be a string.',
            'max_length' => 'Action needed must be less than or equal to 60 characters.',
        ],
        'document_id' => [
            'required'   => 'Document id is required.',
            'string'     => 'Document id must be an integer.',
        ],    
    ];
}
