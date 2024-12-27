@extends('layout')
@section('title', 'Trang chu')
@section('body')
<div class="hero overlay inner-page bg-primary py-5">
    <div class="container">
        <div class="row align-items-center justify-content-center text-center pt-5">
            <div class="col-lg-6">
                <h1 class="heading text-white mb-3" data-aos="fade-up">Title</h1>
            </div>
        </div>
    </div>
</div>

</div>
<section class="section posts-entry">
    <div class="container">
        <div class="row g-3">
            <div class="col-md-12">
                <div class="row g-3">
                    @foreach($cots as $cot)
                    <div class="col-md-4">
                        <div class="blog-entry">

                            <a href="{{ route('detail', $cot->id) }}" class="img-link">
                                <img src="{{$cot -> image}}" alt="Image" class="img-fluid">
                            </a>
                            <h3>{{$cot-> user_id}}</h3>
                            <h2><a href="{{ route('detail', $cot->id) }}">{{$cot -> title}}</a></h2>
                        </div>
                    </div>
                    @endforeach

                </div>
            </div>
        </div>
    </div>
</section>
@stop()