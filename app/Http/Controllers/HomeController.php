<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use App\Models\Content;
use App\Models\Customer;
use App\Models\User;

class HomeController extends Controller
{
    public function index()
    {
        $cots = Content::all();


        return view('home', compact('cots'));
    }
    public function show( Content $cots)
    {
        $cus = Customer::orderBy('name', 'ASC')->get();
        $comments = $cots->comments()->orderBy('created_at', 'DESC')->get();
        return view('detail', compact('cots', 'cus', 'comments')); // Trả về view với dữ liệu bài blog
    }

    public function post_comment($content_id)
    {
        // Validate dữ liệu từ form
        $validatedData = request()->validate([
            'des' => 'required', // Nội dung bình luận
            'customer_id' => 'required|exists:customers,id', // ID khách hàng phải tồn tại
        ]);

        // Thêm ID bài viết vào dữ liệu
        $validatedData['content_id'] = $content_id;

        // Lưu bình luận
        if (Comment::create($validatedData)) {
            return redirect()->back()->with('success', 'Bình luận đã được đăng!');
        }

        return redirect()->back()->with('error', 'Đã xảy ra lỗi khi lưu bình luận.');
    }






    public function contact()
    {
        return view('contact');
    }

    public function login(){
        return view ('login');
    }
    public function submit_login() {
        // Validate đầu vào
        request()->validate([
            'email' => 'required|email|exists:users,email',
            'password' => 'required'
        ]);

        $credentials = request()->only('email', 'password');

        // Tìm người dùng dựa trên email
        $user = '\App\Models\User'::where('email', $credentials['email'])->first();

        if ($user) {
            // Kiểm tra mật khẩu MD5 cũ
            if ($user->password === md5($credentials['password'])) {
                // Nếu khớp, cập nhật mật khẩu sang Bcrypt
                $user->password = \Illuminate\Support\Facades\Hash::make($credentials['password']);
                $user->save();

                // Đăng nhập sau khi cập nhật
                auth()->login($user);

                return redirect()->route('home')->with('success', 'Đăng nhập thành công và mật khẩu đã được nâng cấp!');
            }

            // Kiểm tra mật khẩu được mã hóa Bcrypt
            if (\Illuminate\Support\Facades\Hash::check($credentials['password'], $user->password)) {
                // Đăng nhập thành công
                auth()->login($user);

                return redirect()->route('home')->with('success', 'Đăng nhập thành công!');
            }
        }

        // Nếu không khớp mật khẩu hoặc không tìm thấy người dùng
        return redirect()->back()->withErrors(['email' => 'Thông tin đăng nhập không chính xác.']);
    }


}
