@extends('admin.layout')
@section('title', 'Blog')

@section('body')
<div class="card">
    <div class="card-header">
        <div class="card-title">Basic Table</div>
    </div>
    <div class="card-body">
        <div class="card-sub">
            bang noi dung Blog
        </div>
        <table class="table mt-3">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Title</th>
                    <th scope="col">Author</th>
                    <th scope="col">Status</th>
                    <th scope="col">Image</th>
                    <th scope="col">Action</th>

                </tr>
            </thead>
            <tbody>
                @foreach($data as $cot)
                <tr>
                    <td>{{$cot -> id}}</td>
                    <td>{{$cot -> title}}</td>
                    <td>{{$cot -> cus->name}}</td>
                    <td>{{$cot -> status ==0 ? 'dang An' : 'Dang hien' }}</td>
                    <td>
                        <img src="uploads/ {{ $cot-> image}}" width="55">
                    </td>
                    <td>
                        <form method="post" action="{{route('content.destroy', $cot->id )}}">
                            @csrf @method('Delete')
                            <a href="" class="btn btn-sm btn-primary"><i class="fa fa-edit"></i>Edit</a>
                            <button href="" class="btn btn-sm btn-danger" onclick="return confirm('ban co chan khong?')"><i class="fa fa-tras"></i> Delete</button>
                        </form>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
        <hr>
        {{$data->links()}}
    </div>
</div>
@stop()