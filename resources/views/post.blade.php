@extends('layouts.main')

@section('container')
    <div class="container">
        <div class="row justify-content-center mb-5">
            <div class="col-md-8">
                <h1 class="mb-3">{{ $post->title }}</h1>

                <article class="mb-5">
                    {{--<h2>{{ $post->title }}</h2>--}}
                    <p>By. <a href="/posts?author={{ $post->author->username }}" class="text-decoration-none">{{ $post->author->name }}</a>
                        in <a class="text-decoration-none" href="/posts?category={{ $post->category->slug }}">
                            {{ $post->category->name }}</a>
                    </p>
                    <img src="https://picsum.photos/1200/400/" alt="{{ $post->category->name }}" class="img-fluid">
                    <article class="my-3 fs-5">
                        {!! $post->body !!}
                    </article>
                </article>

                <a href="/posts" class="d-block mt-3">Back To Post</a>
            </div>
        </div>
    </div>





{{--Post::create([--}}
        {{--'title'=>"Judul Ketiga",--}}
        {{--'category_id'=>3,--}}
        {{--'slug'=>"judul-ke-tiga",--}}
        {{--'excerpt'=>"Lorem ipsum dolor sit amet, consectetur adipisicing elit",--}}
        {{--'body'=>"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores esse et laborum voluptatum. Ad aperiam deserunt doloremque dolores doloribus ducimus eos excepturi exercitationem facilis fuga, hic impedit inventore ipsam itaque iure labore mollitia officiis </p> <p>perferendis praesentium quas quibusdam sit tempore ullam. A ad, cupiditate distinctio eos esse est et expedita hic illum neque nisi, reiciendis rem repudiandae? Architecto asperiores corporis culpa cum illum natus numquam odit perferendis sequi vero? Aliquam aliquid architecto atque consectetur consequuntur dolore doloribus,</p> <p>exercitationem expedita illum inventore laborum libero minima minus necessitatibus nihil nisi nobis nostrum placeat quos rerum tenetur ut vero. Corporis maxime minima soluta. Consequatur dolorum facilis harum ipsam, iste necessitatibus odit optio provident rem repudiandae sequi, similique unde! Magnam minus nihil numquam sint.</p>",--}}
    {{--]);--}}

    {{--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores esse et laborum voluptatum. Ad aperiam deserunt doloremque dolores doloribus ducimus eos excepturi exercitationem facilis fuga, hic impedit inventore ipsam itaque iure labore mollitia officiis </p> <p>perferendis praesentium quas quibusdam sit tempore ullam. A ad, cupiditate distinctio eos esse est et expedita hic illum neque nisi, reiciendis rem repudiandae? Architecto asperiores corporis culpa cum illum natus numquam odit perferendis sequi vero? Aliquam aliquid architecto atque consectetur consequuntur dolore doloribus,</p> <p>exercitationem expedita illum inventore laborum libero minima minus necessitatibus nihil nisi nobis nostrum placeat quos rerum tenetur ut vero. Corporis maxime minima soluta. Consequatur dolorum facilis harum ipsam, iste necessitatibus odit optio provident rem repudiandae sequi, similique unde! Magnam minus nihil numquam sint.</p>--}}
    {{--Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos nemo quaerat quidem sequi, unde vel vero voluptas! Eaque fugiat ipsum magnam mollitia praesentium quia quidem rerum sint! Adipisci aperiam dolores dolorum eligendi eos id impedit labore libero nesciunt tempore? Natus, officiis, totam. Asperiores at beatae error, est libero nulla odio placeat possimus quam quasi quod quos saepe, sapiente! Accusamus ad alias, autem dolorem eligendi harum nemo nisi perspiciatis sint, ullam unde voluptas? A commodi culpa doloremque dolores maiores nisi perspiciatis porro saepe sapiente sed. Beatae, consectetur consequuntur dolore ea ex facere iste laborum quas, quia quibusdam quidem reiciendis rem sit.--}}

@endsection