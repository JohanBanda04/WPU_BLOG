<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\Category;
use App\Models\Post;
use App\Models\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
//        User::create([
//            'name'=>'Sandhika Galih',
//            'email'=>'sandhikagalih@gmail.com',
//            'password'=>bcrypt('12345'),
//        ]);
//
//        User::create([
//            'name'=>'Doddy Ferdiansyah',
//            'email'=>'doddy@gmail.com',
//            'password'=>bcrypt('12345'),
//        ]);

        User::factory(3)->create();
//
        Category::create([
            'name'=>'Web Programming',
            'slug'=>'web-programming',
        ]);

        Category::create([
            'name'=>'Web Design',
            'slug'=>'web-design',
        ]);

        Category::create([
            'name'=>'Personal',
            'slug'=>'personal',
        ]);

        Post::factory(20)->create();
//
//        Post::create([
//            'title'=>'Judul Pertama',
//            'slug'=>'judul-pertama',
//            'excerpt'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos nemo quaerat quidem sequi, unde vel vero',
//            'body'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos nemo quaerat quidem sequi, unde vel vero voluptas! Eaque fugiat ipsum magnam mollitia praesentium quia quidem rerum sint! Adipisci aperiam dolores dolorum eligendi eos id impedit labore libero nesciunt tempore? Natus, officiis, totam. Asperiores at beatae error, est libero nulla odio placeat possimus quam quasi quod quos saepe, sapiente! Accusamus ad alias, autem dolorem eligendi harum nemo nisi perspiciatis sint, ullam unde voluptas? A commodi culpa doloremque dolores maiores nisi perspiciatis porro saepe sapiente sed. Beatae, consectetur consequuntur dolore ea ex facere iste laborum quas, quia quibusdam quidem reiciendis rem sit.',
//            'category_id'=>1,
//            'user_id'=>1,
//        ]);
//
//        Post::create([
//            'title'=>'Judul Ke Dua',
//            'slug'=>'judul-ke-dua',
//            'excerpt'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos nemo quaerat quidem sequi, unde vel vero',
//            'body'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos nemo quaerat quidem sequi, unde vel vero voluptas! Eaque fugiat ipsum magnam mollitia praesentium quia quidem rerum sint! Adipisci aperiam dolores dolorum eligendi eos id impedit labore libero nesciunt tempore? Natus, officiis, totam. Asperiores at beatae error, est libero nulla odio placeat possimus quam quasi quod quos saepe, sapiente! Accusamus ad alias, autem dolorem eligendi harum nemo nisi perspiciatis sint, ullam unde voluptas? A commodi culpa doloremque dolores maiores nisi perspiciatis porro saepe sapiente sed. Beatae, consectetur consequuntur dolore ea ex facere iste laborum quas, quia quibusdam quidem reiciendis rem sit.',
//            'category_id'=>1,
//            'user_id'=>1,
//        ]);
//
//        Post::create([
//            'title'=>'Judul Ke Tiga',
//            'slug'=>'judul-ke-tiga',
//            'excerpt'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos nemo quaerat quidem sequi, unde vel vero',
//            'body'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos nemo quaerat quidem sequi, unde vel vero voluptas! Eaque fugiat ipsum magnam mollitia praesentium quia quidem rerum sint! Adipisci aperiam dolores dolorum eligendi eos id impedit labore libero nesciunt tempore? Natus, officiis, totam. Asperiores at beatae error, est libero nulla odio placeat possimus quam quasi quod quos saepe, sapiente! Accusamus ad alias, autem dolorem eligendi harum nemo nisi perspiciatis sint, ullam unde voluptas? A commodi culpa doloremque dolores maiores nisi perspiciatis porro saepe sapiente sed. Beatae, consectetur consequuntur dolore ea ex facere iste laborum quas, quia quibusdam quidem reiciendis rem sit.',
//            'category_id'=>2,
//            'user_id'=>1,
//        ]);
//
//        Post::create([
//            'title'=>'Judul Ke Empat',
//            'slug'=>'judul-ke-empat',
//            'excerpt'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos nemo quaerat quidem sequi, unde vel vero',
//            'body'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos nemo quaerat quidem sequi, unde vel vero voluptas! Eaque fugiat ipsum magnam mollitia praesentium quia quidem rerum sint! Adipisci aperiam dolores dolorum eligendi eos id impedit labore libero nesciunt tempore? Natus, officiis, totam. Asperiores at beatae error, est libero nulla odio placeat possimus quam quasi quod quos saepe, sapiente! Accusamus ad alias, autem dolorem eligendi harum nemo nisi perspiciatis sint, ullam unde voluptas? A commodi culpa doloremque dolores maiores nisi perspiciatis porro saepe sapiente sed. Beatae, consectetur consequuntur dolore ea ex facere iste laborum quas, quia quibusdam quidem reiciendis rem sit.',
//            'category_id'=>2,
//            'user_id'=>2,
//        ]);
//         \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
    }
}
