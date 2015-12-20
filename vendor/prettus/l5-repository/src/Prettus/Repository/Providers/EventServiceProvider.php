<?php
namespace Prettus\Repository\Providers;

use Illuminate\Foundation\Support\Providers\EventServiceProvider as ServiceProvider;

class EventServiceProvider extends ServiceProvider {

    /**
     * The event handler mappings for the application.
     *
     * @var array
     */
    protected $listen = [
        'Prettus\Repository\Events\RepositoryEntityCreated' => [
            'Prettus\Repository\Listeners\CleanCacheRepository'
        ],
        'Prettus\Repository\Events\RepositoryEntityUpdated' => [
            'Prettus\Repository\Listeners\CleanCacheRepository'
        ],
        'Prettus\Repository\Events\RepositoryEntityDeleted' => [
            'Prettus\Repository\Listeners\CleanCacheRepository'
        ]
    ];
}