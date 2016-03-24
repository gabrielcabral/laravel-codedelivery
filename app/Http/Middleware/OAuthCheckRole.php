<?php

namespace CodeDelivery\Http\Middleware;

use Closure;
use CodeDelivery\Repositories\UserRepository;
use LucaDegasperi\OAuth2Server\Facades\Authorizer;

/**
 * Class OAuthCheckRole
 * @package CodeDelivery\Http\Middleware
 */
class OAuthCheckRole
{

    /**
     * @var UserRepository
     */
    private $userRepository;

    /**
     * OAuthCheckRole constructor.
     * @param UserRepository $userRepository
     */
    public function __construct(UserRepository $userRepository){
        $this->userRepository = $userRepository;
    }

    /**
     * @param $request
     * @param Closure $next
     * @param $role
     * @return mixed
     */
    public function handle($request, Closure $next, $role)
    {
        $id = Authorizer::getResourceOwnerID();
        $user = $this->userRepository->find($id);

        if ($user->role != $role){
            abort('403', 'Access Forbidden');
        }
        return $next($request);
    }
}
