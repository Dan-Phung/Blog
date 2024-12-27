@extends('admin.layout')
@section('title', 'Create Blog')

@section('body')

<div class="container mt-5"  style="margin-top: 90px !important; margin-left: 50px;">
    <h2 class="mb-4">Thêm Mới Blog</h2>

    <form action="{{ route('content.store') }}" method="POST" enctype="multipart/form-data" >
        @csrf <!-- Bảo vệ form -->

        <!-- Tiêu đề -->
        <div class="mb-3">
            <label for="title" class="form-label">Tiêu đề</label>
            <input type="text" name="title" class="form-control @error('title') is-invalid @enderror" id="title" placeholder="Nhập tiêu đề">
            @error('title')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>

        <!-- Nội dung -->
        <div class="mb-3">
            <label for="description" class="form-label">Nội dung</label>
            <textarea name="Description" class="form-control @error('Description') is-invalid @enderror" id="description" rows="3" placeholder="Nhập nội dung"></textarea>
            @error('Description')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>

        <!-- Hình ảnh -->
        <div class="mb-3">
            <label for="image" class="form-label">Hình ảnh</label>
            <input type="file" name="Image" class="form-control @error('Image') is-invalid @enderror" id="image">
            @error('Image')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>

        <!-- Tác giả -->
        <div class="mb-3">
            <label for="customer" class="form-label">Tác giả</label>
            <select name="customer" id="customer" class="form-select @error('customer') is-invalid @enderror">
                <option value="">Chọn tác giả</option>
                @foreach($cus as $cs)
                <option value="{{ $cs->id }}">{{ $cs->name }}</option>
                @endforeach
            </select>
            @error('customer')
            <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>

        <!-- Trạng thái -->
        <div class="mb-3">
            <label class="form-label">Trạng thái</label>
            <div class="form-check">
                <input type="radio" name="status" value="1" id="status_show" class="form-check-input" checked>
                <label for="status_show" class="form-check-label">Hiển thị</label>
            </div>
            <div class="form-check">
                <input type="radio" name="status" value="0" id="status_hide" class="form-check-input">
                <label for="status_hide" class="form-check-label">Ẩn</label>
            </div>
        </div>

        <!-- Nút Submit -->
        <button type="submit" class="btn btn-primary">Thêm Blog</button>
    </form>
</div>

@stop