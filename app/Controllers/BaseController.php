<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use CodeIgniter\HTTP\CLIRequest;
use CodeIgniter\HTTP\IncomingRequest;
use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;
use Psr\Log\LoggerInterface;

/**
 * Class BaseController
 *
 * BaseController provides a convenient place for loading components
 * and performing functions that are needed by all your controllers.
 * Extend this class in any new controllers:
 *     class Home extends BaseController
 *
 * For security be sure to declare any new methods as protected or private.
 */
abstract class BaseController extends Controller
{
    /**
     * Instance of the main Request object.
     *
     * @var CLIRequest|IncomingRequest
     */
    protected $request;
    protected $table_name = '';
    protected $columns = [];
    protected $rules = [];
    protected $error_messages = [];
    protected $has_photo = false;

    /**
     * An array of helpers to be loaded automatically upon
     * class instantiation. These helpers will be available
     * to all other controllers that extend BaseController.
     *
     * @var array
     */
    protected $helpers = [];

    /**
     * Be sure to declare properties for any property fetch you initialized.
     * The creation of dynamic property is deprecated in PHP 8.2.
     */
    // protected $session;

    /**
     * @return void
     */
    public function initController(RequestInterface $request, ResponseInterface $response, LoggerInterface $logger)
    {
        // Do Not Edit This Line
        parent::initController($request, $response, $logger);

        // Preload any models, libraries, etc, here.

        // E.g.: $this->session = \Config\Services::session();
    }

    protected function savePhoto($file)
    {
        try {
            $name  = $this->table_name . "_" . $file->getRandomName();
            $image = \Config\Services::image();
            $image->withFile($file)
                ->fit(500, 500, 'center')
                ->save(ROOTPATH . 'public/uploads/' . $name);
        } catch (\Exception $e) {
            throw $e;
        }

        return $name;
    }

    protected function deletePhoto($name)
    {
        try {
            $file_path = ROOTPATH . 'public/uploads/' . $name;

            if (is_file($file_path)) {
                unlink($file_path);
            }
        } catch (\Exception $e) {
            throw $e;
        }
    }

    public function delete($id)
    {
        try {
            $db = db_connect();
            $builder = $db->table($this->table_name);
            $items = $builder
                ->where('id', $id)
                ->get()
                ->getResult();

            if(count($items)) {
                $item = $items[0];

                if($this->has_photo) {
                    $this->deletePhoto($item->photo);
                }
            }

            $builder
                ->where('id', $id)
                ->delete();

            $db->close();

            return $this->response->setJSON([
                "status"  => "success",
                "message" => "Successfully deleted ". $this->table_name,
                "item" => $item,
            ]);
        } catch (\Exception $e) {
            return $this->response->setJSON([
                "status"  => "error",
                "message" => $e->getMessage(),
            ]);
        }
    }   

    public function get($id)
    {
        try {
            $db = db_connect();
            $builder = $db->table($this->table_name);
            $items = $builder
                ->where('id', $id)
                ->get()
                ->getResult();

            if(count($items)) {
                $item = $items[0];
            }

            $db->close();

            return $this->response->setJSON([
                "status"  => "success",
                "item" => $item,
            ]);
        } catch (\Exception $e) {
            return $this->response->setJSON([
                "status"  => "error",
                "message" => $e->getMessage(),
            ]);
        }
    }    

    public function get_all()
    {
        try {
            $db = db_connect();
            $builder = $db->table($this->table_name);
            $items = $builder
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

    protected function getErrors($columns)
    {
        $post = $this->request->getPost($columns);

        $validation = \Config\Services::validation();
        $validation->setRules($this->rules, $this->error_messages);
        if (!$validation->run($post)) {
            $errors = $validation->getErrors();

            return $errors;
        }

        return false;
    }

    public function add()
    {
        $errors = $this->getErrors($this->columns);
        $post = $this->request->getPost($this->columns);

        if ($errors) {
            return $this->response->setJSON([
                "status"         => "error",
                "error_messages" => $errors,
                "message"        => "Invalid datas were entered.",
            ]);
        }

        try {
            if($this->has_photo) {
                $file = $this->request->getFile('photo');
                $post['photo'] = ($file->getName()) ? $this->savePhoto($file) : "";    
            }

            $db = db_connect();
            $builder = $db->table($this->table_name);
            $builder->insert($post);

            $items = $builder
                ->where('id', $db->insertID())
                ->get()
                ->getResult();

            if (count($items)) {
                $item = $items[0];
            }

            return $this->response->setJSON([
                "status"  => "success",
                "item"    => $item,
                "message" => "Successfully added new " . $this->table_name,
            ]);
        } catch (\Exception $e) {
            return $this->response->setJSON([
                "status"  => "error",
                "message" => $e->getMessage(),
            ]);
        }
    }

    public function update()
    {
        $columns = $this->columns;
        $columns[] = 'id';
        $errors = $this->getErrors($columns);
        $post = $this->request->getPost($columns);

        if ($errors) {
            return $this->response->setJSON([
                "status"         => "error",
                "error_messages" => $errors,
                "message"        => "Invalid datas were entered.",
            ]);
        }

        try {
            if($this->has_photo) {
                $file = $this->request->getFile('photo');
                $post['photo'] = ($file->getName()) ? $this->savePhoto($file) : "";
            }

            $db = db_connect();
            $builder = $db->table($this->table_name);
            $builder->upsert($post);

            $items = $builder
                ->where('id', $post['id'])
                ->get()
                ->getResult();

            if (count($items)) {
                $item = $items[0];
            }

            return $this->response->setJSON([
                "status"  => "success",
                "item"    => $item,
                "message" => "Successfully updated " . $this->table_name,
            ]);
        } catch (\Exception $e) {
            return $this->response->setJSON([
                "status"  => "error",
                "message" => $e->getMessage(),
            ]);
        }
    }

    public function count()
    {
        try {
            $db = db_connect();
            $builder = $db->table($this->table_name);
            $items = $builder->selectCount('id', 'count')
                ->get()
                ->getResult();

            return $this->response->setJSON([
                "status" => "success",
                "count"  => $items[0]->count,
            ]);
        } catch (\Exception $e) {
            return $this->response->setJSON([
                "status"  => "error",
                "message" => $e->getMessage(),
            ]);
        }
    }  
}
