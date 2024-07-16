<?php

namespace App\Controllers;

class RoomController extends BaseController
{
    public $table_name = 'room';
    public $has_photo = true;
    public $columns = ['name','building'];
    public $rules = [
        'name'     => 'required|string|max_length[60]',
        'building' => 'required|string|max_length[60]',
        'photo'    => 'max_size[photo,4096]|is_image[photo]',
    ];

    public $error_messages = [
        'name' => [
            'required'   => 'Room name is required.',
            'string'     => 'Room name must be a string.',
            'max_length' => 'Room name must be less than or equal to 60 characters.',
        ],
        'building' => [
            'required'   => 'Building name is required.',
            'string'     => 'Building name must be a string.',
            'max_length' => 'Building name must be less than or equal to 60 characters.',
        ],
        'photo' => [
            'max_size' => 'Room photo must be less than or equal to 4096 kilobytes or 4MB in size.',
            'is_image' => 'Room photo must be an image.',
        ],
    ];
}
