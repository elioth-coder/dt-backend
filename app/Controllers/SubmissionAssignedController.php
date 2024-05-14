<?php

namespace App\Controllers;

class SubmissionAssignedController extends BaseController
{
    public $table_name = 'submission_assigned';
    public $columns = ['personnel_id', 'submission_id'];
    public $rules = [
        'personnel_id'  => 'required|numeric',
        'submission_id' => 'required|numeric',
    ];

    public $error_messages = [  
        'personnel_id' => [
            'required' => 'Personnel id is required.',
            'numeric'  => 'Personnel id must be numeric.',
        ],
        'submission_id' => [
            'required' => 'Document submission id is required.',
            'numeric'  => 'Document submission id must be numeric.',
        ],
    ];
}
