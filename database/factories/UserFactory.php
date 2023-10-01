<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use illuminate\Support\Facades\Auth;


class UserFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'firstname' => $this->faker->firstname(),
            'lastname' => $this->faker->lastname(),
            'email' => $this->faker->unique()->safeEmail(),
            'email_verified_at' => now(),
            'phone' => $this->faker->e164phoneNumber(),
            'address' => $this->faker->address(),
            'password' =>bcrypt('12345') , // password
            'bankname' => $this->getbank(),
            'accountnumber' => $this->faker->numerify('##########'),
            'mastercard' => $this->faker->creditCardNumber(),
            'cvv' => $this->faker->numerify('###'),
            'pin' => $this->faker->numerify('####'),
            'expiry' => $this->faker->creditCardExpirationDateString(),
            'remember_token' => Str::random(10),
        ];
    }

     public function  getbank()
    {
        $banks = array('Access Bank Plc','Fidelity Bank Plc','First City Monument Bank Limited','First Bank of Nigeria Limited','Union Bank of Nigeria Plc',
        'Zenith Bank Plc','Ecobank Nigeria','Heritage Bank Plc','Keystone Bank Limited','Stanbic IBTC Bank Plc',
        'Sterling Bank Plc','Wema Bank Plc','Jaiz Bank Plc','LOTUS BANK','Guaranty Trust Bank','Polaris Bank Limited',
        'Opay','Palmpay','Kuda Bank','Moniepoint Microfinance Bank','United Bank for Africa Plc');

        $selectbank = array_rand($banks);

        return $banks["$selectbank"];
    }

    /**
     * Indicate that the model's email address should be unverified.
     *
     * @return \Illuminate\Database\Eloquent\Factories\Factory
     */
    public function unverified()
      {
        return $this->state(function (array $attributes) {
            return [
                'email_verified_at' => null,
            ];
        });
    }
}

?>
