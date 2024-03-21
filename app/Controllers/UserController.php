<?php

namespace App\Controllers;

class UserController extends BaseController
{
    public function login()
    {
        $post = $this->request->getPost(['username', 'password']);

        $db = db_connect();
        $builder = $db->table('user');
        $users = $builder
            ->where('username', $post['username'])
            ->where('password', sha1($post['password']))
            ->get()
            ->getResult();

        if (!$users) {
            return $this->response->setJSON([
                "status" => "error",
                "message" => "Invalid username or password.",
            ]);
        } else {
            $user = $users[0];
            $user->password = null;
            $session = session();
            $session->set("user", $user);

            return $this->response->setJSON([
                "status"  => "success",
                "user"    => $user,
                "message" => "Successfully logged in.",
            ]);
        }
    }

    public function logout()
    {
        $session = session();

        $session->destroy();
        return $this->response->setJSON([
            "status" => "success",
            "message" => "Successfully logged out.",
        ]);
    }

    public function me()
    {
        
        $session = session();

        return $this->response->setJSON([
            "status" => "success",
            "user" => $session->get('user'),
        ]);
    }
}
