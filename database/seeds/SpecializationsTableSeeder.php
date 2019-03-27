<?php

use Illuminate\Database\Seeder;
use App\Specialization;

class SpecializationsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $specialization = new Specialization();
        $specialization->name = 'stomatologia';
        $specialization->save();

        $specialization = new Specialization();
        $specialization->name = 'chirurgia';
        $specialization->save();

        $specialization = new Specialization();
        $specialization->name = 'higienizacja';
        $specialization->save();

        $specialization = new Specialization();
        $specialization->name = 'protetyka';
        $specialization->save();

        $specialization = new Specialization();
        $specialization->name = 'rtg';
        $specialization->save();

        $specialization = new Specialization();
        $specialization->name = 'administracja';
        $specialization->save();
    }
}
