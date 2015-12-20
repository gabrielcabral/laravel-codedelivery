<?php

namespace Illuminate\Foundation\Bootstrap;

use Dotenv;
use Illuminate\Contracts\Foundation\Application;
use InvalidArgumentException;

class DetectEnvironment
{
    /**
     * Bootstrap the given application.
     *
     * @param  \Illuminate\Contracts\Foundation\Application  $app
     * @return void
     */
    public function bootstrap(Application $app)
    {
        try {
            Dotenv::load($app->environmentPath(), $app->environmentFile());
        } catch (InvalidArgumentException $e) {
            //
        }

        $app->detectEnvironment(function () {
            return env('APP_ENV', 'production');
        });
    }
}
