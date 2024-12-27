<?php

namespace App\Http\Controllers;

use App\Models\Content;
use App\Models\Customer;
use Illuminate\Http\Request;

class ContentController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = Content::orderBy('id', 'DESC')->paginate(7);
        return view('admin.content', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $cus = Customer::orderBy('name', 'ASC')->get();
        return view('admin.create', compact('cus'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required',
            'description' => 'required',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',

        ]);
        $data = $request->all();

        // Xử lý file ảnh
        if ($request->hasFile('image')) {
            $data['image'] = $request->file('image')->store('images', 'public'); // Lưu file vào storage/public/images
        }

        // Tạo mới Content
        Content::create($data);
        dd($data);
        // Chuyển hướng về danh sách content
        return redirect()->route('admin.content')->with('success', 'Blog đã được thêm thành công!');
    }

    /**
     * Display the specified resource.
     */
    public function show(Content $content)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Content $content)
    {

        return view('admin.edit', compact('content'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Content $content)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Content $content)
    {
        $content->delete();
        return redirect()->route('content.index');
    }
}
