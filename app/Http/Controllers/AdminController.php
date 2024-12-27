<?php

namespace App\Http\Controllers;
use App\Models\Customer;
use App\Models\User;

class AdminController extends Controller{
    public function index(){
        return view ('admin.index');
    }

    public function login(){
        return view ('admin.login');
    }
    public function submit_login(){
        request()->validate([
            'email'=> 'required|email|exists:users',
            'password'=> 'required'
        ]);

        $credentials = request()->only('email', 'password');

        // Thử đăng nhập
        if (auth()->attempt($credentials)) {
            return redirect()->route('admin.index')->with('success', 'Đăng nhập thành công!');
        }
    
        // Nếu đăng nhập thất bại
        return redirect()->back()->withErrors(['email' => 'Thông tin đăng nhập không chính xác.']);
    }
    public function register(){
        return view('admin.register');
    }
    public function submit_register(){
        request()->validate([
            'name' =>'required',
            'email'=> 'required|email|unique:users',
            'password'=> 'required',
            'confirm_password' => 'required|same:password' 
        ]);

        $data = request()->all('email', 'name');
        $data['password'] =bcrypt(request('password'));
        User::create($data);
        return redirect()->route('admin.login');
    }

}