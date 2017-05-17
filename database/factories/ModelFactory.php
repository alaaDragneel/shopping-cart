<?php

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| Here you may define all of your model factories. Model factories give
| you a convenient way to create models for testing and seeding your
| database. Just tell the factory how a default model should look.
|
*/

// product factory table
$factory->define(App\Product::class, function (Faker\Generator $faker) {
    return [
        'title' => $faker->sentence,
        'description' => $faker->text,
        'img' => $faker->imageUrl($width = 640, $height = 480),
        'price'=>$faker->numberBetween($min = 1, $max = 50),

    ];
});
