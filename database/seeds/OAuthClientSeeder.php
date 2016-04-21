<?php
use CodeDelivery\Models\OAuth;
use Illuminate\Database\Seeder;

class OAuthClientSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
//        factory(OAuth::class)->create([
//            'client_id' => 'appid01',
//            'client_secret' => 'secret',
//            'app' => 'Minha App Mobile',
//        ])->save();
//        DB::insert('Insert into oauth_clients (client_id, client_secret, app) values (?, ?)', ['appid01', 'secret', 'Minha App Mobile']);
        DB::insert('Insert into oauth_clients (id, secret, name) values (?, ?, ?)', ['appid01', 'secret', 'Minha App Mobile']);
    }
}