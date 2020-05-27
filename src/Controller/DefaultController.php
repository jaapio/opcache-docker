<?php

declare(strict_types=1);

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;

final class DefaultController extends AbstractController
{
    public function index() : JsonResponse
    {
        return new JsonResponse(['message' => 'hello world']);
    }
}
