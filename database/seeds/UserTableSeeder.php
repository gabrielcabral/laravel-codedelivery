<?php

use Illuminate\Database\Seeder;
use codedelivery\Models\User;
use codedelivery\Models\Client;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(User::class,10)->create()->each(function($u){
           $u->client()->save(factory(Client::class)->make());
        });
    }
}
