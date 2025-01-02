<?php

namespace App\Controllers;

class SemesterTeacherController extends BaseController
{
    public $table_name = 'semester_teacher';
    public $columns = ['semester_id', 'personnel_id','research','extension','consultation','designation'];
    public $rules = [
        'semester_id'  => 'required|numeric',
        'personnel_id' => 'required|numeric',
    ];

    public $error_messages = [
        'semester_id' => [
            'required' => 'Semester id is required.',
            'numeric'  => 'Semester id must be numeric.',
        ],
        'personnel_id' => [
            'required' => 'Personnel id is required.',
            'numeric'  => 'Personnel id must be numeric.',
        ],
    ];
}
