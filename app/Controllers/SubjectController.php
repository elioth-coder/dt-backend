<?php

namespace App\Controllers;

class SubjectController extends BaseController
{
    public $table_name = 'subject';
    public $columns = ['code', 'title', 'units', 'lec', 'lab', 'hours_week', 'pre_req', 'year_level', 'semester', 'program', 'major'];
    public $rules = [
        'code'       => 'required|string|max_length[15]',
        'title'      => 'required|string|max_length[120]',
        'units'      => 'required|integer|max_length[2]',
        'lec'        => 'integer|max_length[2]',
        'lab'        => 'integer|max_length[2]',
        'hours_week' => 'required|integer|max_length[2]',
        'pre_req'    => 'string|max_length[100]',
        'year_level' => 'required|integer|in_list[1,2,3,4,5]',
        'semester'   => 'required|in_list[1st,2nd,Summer]',
        'program'    => 'required|string|max_length[10]',
        'major'      => 'required|string|max_length[100]',
    ];

    public $error_messages = [
        'code' => [
            'required'   => 'Subject Code is required.',
            'string'     => 'Subject Code must be a string.',
            'max_length' => 'Subject Code must be less than or equal to 15 characters.',
        ],
        'title' => [
            'required'   => 'Title is required.',
            'string'     => 'Title must be a string.',
            'max_length' => 'Title must be less than or equal to 120 characters.',
        ],
        'units' => [
            'required'   => 'Units is required.',
            'integer'    => 'Units must be an integer.',
            'max_length' => 'Units must be less than or equal to 99.',
        ],
        'lec' => [
            'integer'    => 'Lecture hours must be an integer.',
            'max_length' => 'Lecture hours must be less than or equal to 99.',
        ],
        'lab' => [
            'integer'    => 'Laboratory hours must be an integer.',
            'max_length' => 'Laboratory hours must be less than or equal to 99.',
        ],
        'hours_week' => [
            'required'   => 'Hours per week is required.',
            'integer'    => 'Hours per week must be an integer.',
            'max_length' => 'Hours per week must be less than or equal to 99.',
        ],
        'pre_req' => [
            'string'     => 'Pre-requesites must be a string.',
            'max_length' => 'Pre-requesites must be less than or equal to 100 characters.',
        ],
        'year_level' => [
            'required'   => 'Year level is required.',
            'integer'    => 'Year level must be an integer.',
            'in_list'    => 'Year level can be of the following values: 1, 2, 3, 4, 5',
        ],
        'semester' => [
            'required'   => 'Semester is required.',
            'string'     => 'Semester must be a string.',
            'in_list'    => 'Semester can be of the following values: 1st, 2nd, Summer',
        ],
        'program' => [
            'required'   => 'Program is required.',
            'string'     => 'Program must be a string.',
            'max_length' => 'Program must be less than or equal to 15 characters.',
        ],
        'major' => [
            'required'   => 'Course Major is required.',
            'string'     => 'Course Major be a string.',
            'max_length' => 'Course Major be less than or equal to 100 characters.',
        ],
    ];

    public function get_programs()
    {
        try {
            $db = db_connect();
            $builder = $db->table($this->table_name);
            $items = $builder
                ->select('program')
                ->distinct(true)
                ->get()
                ->getResult();

            return $this->response->setJSON([
                "status"  => "success",
                "items" => $items,
            ]);
        } catch (\Exception $e) {
            return $this->response->setJSON([
                "status"  => "error",
                "message" => $e->getMessage(),
            ]);
        }
    }  

    
    public function get_program_subjects($section)
    {
        $params = explode(' - ', $section);
        $program = $params[0];
        $year_level = (int) $params[1];

        try {
            $db = db_connect();
            $builder = $db->table($this->table_name);
            $items = $builder
                ->where('program', $program)
                ->where('year_level', $year_level)
                ->get()
                ->getResult();

            return $this->response->setJSON([
                "status"  => "success",
                "items" => $items,
            ]);
        } catch (\Exception $e) {
            return $this->response->setJSON([
                "status"  => "error",
                "message" => $e->getMessage(),
            ]);
        }
    }  
}
