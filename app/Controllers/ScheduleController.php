<?php

namespace App\Controllers;

class ScheduleController extends BaseController
{
    public $table_name = 'schedule';
    public $columns = ['day_of_week', 'section', 'start_time', 'end_time', 'color', 'subject_id', 'teacher_id', 'semester_id'];
    public $rules = [
        'day_of_week' => 'required|string|in_list[Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday]',
        'section'     => 'required|string|max_length[15]',
        'start_time'  => 'required|string|max_length[15]',
        'end_time'    => 'required|string|max_length[15]',
        'color'       => 'required|string|max_length[15]',
        'subject_id'  => 'required|numeric',
        'teacher_id'  => 'required|numeric',
        'semester_id' => 'required|numeric',
    ];

    public $error_messages = [
        'section' => [
            'required'   => 'Section is required.',
            'string'     => 'Section must be a string.',
            'max_length' => 'Section must be less than or equal to 15 characters.',
        ],
        'start_time' => [
            'required'   => 'Start time is required.',
            'string'     => 'Start time must be a string.',
            'max_length' => 'Start time must be less than or equal to 15 characters.',
        ],
        'end_time' => [
            'required'   => 'End time is required.',
            'string'     => 'End time must be a string.',
            'max_length' => 'End time must be less than or equal to 15 characters.',
        ],
        'color' => [
            'required'   => 'Color is required.',
            'string'     => 'Color must be a string.',
            'max_length' => 'Color must be less than or equal to 15 characters.',
        ],
        'day_of_week' => [
            'required'   => 'Day of week is required.',
            'string'     => 'Day of week must be a string.',
            'in_list'    => 'Day of week can be of the following values: Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday',
        ],
        'subject_id' => [
            'required' => 'Subject id is required.',
            'numeric'  => 'Subject id must be numeric.',
        ],
        'teacher_id' => [
            'required' => 'Teacher id is required.',
            'numeric'  => 'Teacher id must be numeric.',
        ],
        'semester_id' => [
            'required' => 'Semester id is required.',
            'numeric'  => 'Semester id must be numeric.',
        ],
    ];
}
