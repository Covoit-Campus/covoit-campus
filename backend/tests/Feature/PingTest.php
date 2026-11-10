<?php

namespace Tests\Feature;

use Tests\TestCase;

class PingTest extends TestCase
{
    public function test_ping_repond_ok(): void
    {
        $this->getJson('/api/ping')
            ->assertOk()
            ->assertJson(['status' => 'ok']);
    }
}
