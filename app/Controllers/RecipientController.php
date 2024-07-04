<?php

namespace App\Controllers;

class RecipientController extends BaseController
{
    public $table_name = 'recipient';
    public $has_photo = true;
    public $columns = ['name','first_name','last_name','role'];
    public $rules = [
        'name'       => 'required|string|max_length[120]',
        'first_name' => 'required|string|max_length[60]',
        'last_name'  => 'required|string|max_length[60]',
        'role'       => 'required|string|max_length[50]',
        'photo'      => 'max_size[photo,4096]|is_image[photo]',
    ];

    public $error_messages = [
        'name' => [
            'required'   => 'Recipient name is required.',
            'string'     => 'Recipient name must be a string.',
            'max_length' => 'Recipient name must be less than or equal to 120 characters.',
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
        'role' => [
            'required'   => 'Recipient role is required.',
            'string'     => 'Recipient role must be a string.',
            'max_length' => 'Recipient role must be less than or equal to 50 characters.',
        ],
        'photo' => [
            'max_size' => 'Recipient photo must be less than or equal to 4096 kilobytes or 4MB in size.',
            'is_image' => 'Recipient photo must be an image.',
        ],
    ];
}
