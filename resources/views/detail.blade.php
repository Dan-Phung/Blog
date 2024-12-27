@extends('layout')
@section('title', 'Chi tiết bài đăng')
@section('body')
<div class="site-cover site-cover-sm same-height overlay single-page" style="background-image: url('images/hero_5.jpg');">
    <div class="container">
        <div class="row same-height justify-content-center">
            <div class="col-md-6">
                <div class="post-entry text-center">

                    <h1 class="mb-4">{{$cots -> title}}</h1>
                    <div class="post-meta align-items-center text-center">
                        <figure class="author-figure mb-0 me-3 d-inline-block"><img src="images/person_1.jpg" alt="Image" class="img-fluid"></figure>
                        <span class="d-inline-block mt-1">By {{$cots-> cus->name}}</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<section class="section">
    <div class="container">
        <div class="row blog-entries element-animate">
            <div class="col-md-12 col-lg-8 main-content">
                <div class="post-content-body">
                    <p>{{$cots->description}}</p>
                    <div class="row my-4">
                        <div class="col-md-12 mb-4">
                            <img src="{{$cots->image}}" alt="Image placeholder" class="img-fluid rounded">
                        </div>
                    </div>
                    <div class="pt-5 comment-wrap">
                        <h3 class="mb-5 heading">Comments</h3>
                        @if(auth()->check())
                        <form action="{{ route('post_comment', $cots->id) }}" method="POST">
                            @csrf
                            <div class="form-group">
                                <textarea name="des" id="comment" rows="3" placeholder="Nội dung bình luận" class="form-control" required></textarea>
                            </div>
                            <input type="hidden" name="customer_id" value="{{ auth()->user()->id }}"> <!-- Vẫn giữ nếu cần ID khách hàng -->
                            <button type="submit" class="btn btn-primary mt-2">Gửi</button>
                        </form>

                        @else

                            <div class="alert alert-danger">
                                <strong>bạn chưa đăng nhập</strong> click vào đây <a href="{{route('login')}}">Đăng nhập</a>
                            </div>

                        @endif

                        @foreach($comments as $com)
                        <ul class="comment-list">
                            <li class="comment">
                                <div class="vcard">
                                    <img src="images/person_1.jpg" alt="Image placeholder">
                                </div>
                                <div class="comment-body">
                                    <h3>{{$com->user->name}}</h3>
                                    <div class="meta">{{$com->created_at->format('Y-m-d H:i')}}</div>
                                    <p>{{$com->des}}</p>
                                    <p><a href="#" class="reply rounded">Reply</a></p>
                                </div>
                            </li>
                        </ul>
                        @endforeach
                        <!-- END comment-list -->
                    </div>
                </div>

                <!-- END sidebar -->

            </div>
        </div>
</section>
@stop()
