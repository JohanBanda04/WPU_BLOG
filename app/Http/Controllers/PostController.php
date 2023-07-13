<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Post;
use App\Models\PostOld;
use App\Models\User;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index()
    {
//        dd(request('search'));

        //'search', dan 'category' merupakan KEY dari sebuah array, krn VALUE ny adalah nilai dari ketikan user
        //pada view field input

        $title = '';
        if(request('category')){
            $category = Category::firstWhere('slug',request('category'));
            $title = ' in '. $category->name;
        }

        if(request('author')){
            $author = User::firstWhere('username',request('author'));
            $title = ' by '. $author->name;
        }
        return view('posts', [
            "title" => "All Posts" . $title,
            "active" => "posts",
            "posts" => Post::latest()->filter(request(['search','category','author']))
                ->paginate(4)->withQueryString(),
        ]);
    }

    public function show(Post $post)
    {
        return view('post', [
            "title" => "Single PostOld",
            "active" => "posts",
            "post" => $post,
        ]);
    }
}
