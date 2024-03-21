<?php

namespace App\Controllers;

class LocationController extends BaseController
{
    public $table_name = 'location';
    public $has_photo = true;
    public $columns = ['name'];
    public $rules = [
        'name'     => 'required|string|max_length[255]',
        'photo'    => 'max_size[photo,4096]|is_image[photo]',
    ];

    public $error_messages = [
        'name' => [
            'required'   => 'Location name is required.',
            'string'     => 'Location name must be a string.',
            'max_length' => 'Location name must be less than or equal to 255 characters.',
        ],
        'photo' => [
            'max_size' => 'Location photo must be less than or equal to 4096 kilobytes or 4MB in size.',
            'is_image' => 'Location photo must be an image.',
        ],
    ];
}
