<?php

namespace App\Controllers;

class SubmissionFileStatusController extends BaseController
{
    public $table_name = 'submission_file_status';
    public $columns = ['file_id', 'assigned_id', 'submission_id', 'status'];
    public $rules = [
        'file_id'       => 'required|numeric',
        'assigned_id'   => 'required|numeric',
        'submission_id' => 'required|numeric',
        'status'        => 'required|numeric',
    ];

    public $error_messages = [
        'file_id' => [
            'required' => 'File id is required.',
            'numeric'  => 'File id must be numeric.',
        ],
        'assigned_id' => [
            'required' => 'Assigned id is required.',
            'numeric'  => 'Assigned id must be numeric.',
        ],
        'submission_id' => [
            'required' => 'Submission id is required.',
            'numeric'  => 'Submission id must be numeric.',
        ],
        'status' => [
            'required' => 'Status is required.',
            'numeric'  => 'Status must be numeric.',
        ],
    ];
}
