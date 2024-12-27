<?php

namespace Database\Factories;

use App\Models\Customer;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Content>
 */
class ContentFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $image = ['https://treobangron.com.vn/wp-content/uploads/2022/09/background-dep-3-2.jpg', 'https://hoanghamobile.com/tin-tuc/wp-content/uploads/2023/07/background-dep-don-gian.jpg', 'https://treobangron.com.vn/wp-content/uploads/2022/09/background-dep-5-2.jpg', 'https://treobangron.com.vn/wp-content/uploads/2022/09/background-dep-4-2.jpg', 'https://cdn2.fptshop.com.vn/unsafe/Uploads/images/tin-tuc/176406/Originals/pexels-mohamed-sarim-1033729.jpg'];
        $key = fake()->randomElement(['0', '1', '2', '3', '4']);

        return [
            'title' => fake()->title(),
            'description' => fake()->paragraph(),
            'image' => $image[$key],
            'customer_id' => fake()-> numberBetween($min = 1, $max = 4),
            'status' => fake()->randomElement([0, 1])
        ];
    }
}
