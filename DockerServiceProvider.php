<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class DockerServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap the application services.
     *
     * @return void
     */
    public function boot()
    {
        $this->publishes([
            __DIR__.'/dist/docker-compose.yml' => base_path(),
            __DIR__.'/dist/.docker/' => base_path('.docker'),
        ], 'docker');
    }

    /**
     * Register the application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
