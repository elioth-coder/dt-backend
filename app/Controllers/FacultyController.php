<?php

namespace App\Controllers;

class FacultyController extends BaseController
{
    public $table_name = 'faculty';
    public $has_photo = true;
    public $columns = ['name','first_name','middle_name','last_name','employment_status','field_specialization','degree','college'];
    public $rules = [
        'name'                 => 'required|string|max_length[120]',
        'first_name'           => 'required|string|max_length[60]',
        'middle_name'          => 'required|string|max_length[60]',
        'last_name'            => 'required|string|max_length[60]',
        'employment_status'    => 'required|string|max_length[120]',
        'field_specialization' => 'required|string|max_length[120]',
        'degree'               => 'string|max_length[30]',
        'college'              => 'required|string|max_length[10]',
        'photo'                => 'max_size[photo,4096]|is_image[photo]',
    ];

    public $error_messages = [
        'name' => [
            'required'   => 'Faculty name is required.',
            'string'     => 'Faculty name must be a string.',
            'max_length' => 'Faculty name must be less than or equal to 120 characters.',
        ],
        'first_name' => [
            'required'   => 'First name is required.',
            'string'     => 'First name must be a string.',
            'max_length' => 'First name must be less than or equal to 60 characters.',
        ],
        'last_name' => [
            'required'   => 'Last name is required.',
            'string'     => 'Last name must be a string.',
            'max_length' => 'Last name must be less than or equal to 60 characters.',
        ],
        'middle_name' => [
            'required'   => 'Middle name is required.',
            'string'     => 'Middle name must be a string.',
            'max_length' => 'Middle name must be less than or equal to 60 characters.',
        ],
        'employment_status' => [
            'required'   => 'Faculty employment status is required.',
            'string'     => 'Faculty employment status must be a string.',
            'max_length' => 'Faculty employment status must be less than or equal to 120 characters.',
        ],
        'field_specialization' => [
            'required'   => 'Faculty field of specialization is required.',
            'string'     => 'Faculty field of specialization must be a string.',
            'max_length' => 'Faculty field of specialization must be less than or equal to 120 characters.',
        ],
        'college' => [
            'required'   => 'College/department is required.',
            'string'     => 'College/department must be a string.',
            'max_length' => 'College/department must be less than or equal to 10 characters.',
        ],
        'photo' => [
            'max_size' => 'Faculty photo must be less than or equal to 4096 kilobytes or 4MB in size.',
            'is_image' => 'Faculty photo must be an image.',
        ],
    ];
}
