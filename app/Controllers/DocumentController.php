<?php

namespace App\Controllers;

class DocumentController extends BaseController
{
    public $table_name = 'document';
    public $has_photo = false;
    public $columns = ['name','category'];
    public $rules = [
        'name'     => 'required|string|max_length[255]',
        'category' => 'required|string|max_length[50]',
    ];

    public $error_messages = [
        'name' => [
            'required'   => 'Document name is required.',
            'string'     => 'Document name must be a string.',
            'max_length' => 'Document name must be less than or equal to 255 characters.',
        ],
        'category' => [
            'required'   => 'Document category is required.',
            'string'     => 'Document category must be a string.',
            'max_length' => 'Document category must be less than or equal to 50 characters.',
        ],
    ];

    public function get_trail($id) 
    {
        try {
            $db = db_connect();
            $builder = $db->table('document_trail');
            $items = $builder
                ->where('document_id', $id)
                ->orderBy('id')
                ->get()
                ->getResult();

            $transformedItems = [];

            foreach($items as $item) {
                $builder = $db->table('location');
                $location = $builder
                    ->where('id', $item->location_id)
                    ->get()
                    ->getResult()[0];
                $builder = $db->table('recipient');
                $recipient = $builder
                    ->where('id', $item->recipient_id)
                    ->get()
                    ->getResult()[0];

                $transformedItem = [
                    "id"            => $item->id,
                    "location"      => $location,
                    "recipient"     => $recipient,
                    "remarks"       => $item->remarks,
                    "status"        => $item->status,
                    "action_needed" => $item->action_needed,
                    "document_id"   => $item->document_id,
                    "dt_created"    => $item->dt_created,
                    "dt_updated"    => $item->dt_updated,
                ];
                $transformedItems[] = $transformedItem;
            }

            $db->close();

            return $this->response->setJSON([
                "status" => "success",
                "items" => $transformedItems,
            ]);
        } catch (\Exception $e) {
            return $this->response->setJSON([
                "status"  => "error",
                "message" => $e->getMessage(),
            ]);
        }        
    }
}
