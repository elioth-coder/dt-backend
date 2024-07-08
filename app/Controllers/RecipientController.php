<?php

namespace App\Controllers;

class RecipientController extends BaseController
{
    public $table_name = 'recipient';
    public $has_photo = true;
    public $columns = ['name','first_name','last_name','employment_status','field_specialization','college'];
    public $rules = [
        'name'                 => 'required|string|max_length[120]',
        'first_name'           => 'required|string|max_length[60]',
        'last_name'            => 'required|string|max_length[60]',
        'employment_status'    => 'required|string|max_length[120]',
        'field_specialization' => 'required|string|max_length[120]',
        'college'              => 'required|string|max_length[10]',
        'photo'                => 'max_size[photo,4096]|is_image[photo]',
    ];

    public $error_messages = [
        'name' => [
            'required'   => 'Personnel name is required.',
            'string'     => 'Personnel name must be a string.',
            'max_length' => 'Personnel name must be less than or equal to 120 characters.',
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
        'employment_status' => [
            'required'   => 'Personnel employment status is required.',
            'string'     => 'Personnel employment status must be a string.',
            'max_length' => 'Personnel employment status must be less than or equal to 120 characters.',
        ],
        'field_specialization' => [
            'required'   => 'Personnel field of specialization is required.',
            'string'     => 'Personnel field of specialization must be a string.',
            'max_length' => 'Personnel field of specialization must be less than or equal to 120 characters.',
        ],
        'college' => [
            'required'   => 'College/department is required.',
            'string'     => 'College/department must be a string.',
            'max_length' => 'College/department must be less than or equal to 10 characters.',
        ],
        'photo' => [
            'max_size' => 'Personnel photo must be less than or equal to 4096 kilobytes or 4MB in size.',
            'is_image' => 'Personnel photo must be an image.',
        ],
    ];
}
