<?php

use Illuminate\Database\Seeder;
use App\User;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = \Faker\Factory::create('pl_PL');

        for ($i=0; $i<100; $i++) {
            $user = new User();
            $user->name = $faker->firstName;
            $user->surname = $faker->lastName;
            $user->pesel = $faker->numberBetween(0,99).$faker->numberBetween(111111111,999999999);
            $user->email = $faker->email;
            $user->phone = $faker->phoneNumber;
            $user->password = bcrypt($faker->password());
            $user->type = 'patient';
            $user->city = $faker->city;
            $user->post_code = $faker->postcode;
            $user->address = $faker->streetAddress;
            $user->save();
        }

        for ($i=0; $i<12; $i++) {
            $user = new User();
            $user->name = $faker->firstName;
            $user->surname = $faker->lastName;
            $user->pesel = $faker->numberBetween(54,91).$faker->numberBetween(111111111,999999999);
            $user->email = $faker->email;
            $user->phone = $faker->phoneNumber;
            $user->password = bcrypt('secret');
            $user->type = 'staff';
            $user->city = $faker->city;
            $user->post_code = $faker->postcode;
            $user->address = $faker->streetAddress;
            $user->description = $faker->realText(100);
            $user->status = 'active';
            $user->save();
        }
    }
}
