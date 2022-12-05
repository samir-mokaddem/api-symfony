<?php

namespace App\State;

use ApiPlatform\Metadata\Operation;
use ApiPlatform\State\ProcessorInterface;
use Doctrine\ORM\EntityManagerInterface;
use app\Entity\User;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;

class UserProcessor implements ProcessorInterface

{    
    public function __construct(
    public readonly EntityManagerInterface $entityManager,
    public readonly UserPasswordHasherInterface $passwordHasher
    )
    {
    }

    public function process(mixed $data, Operation $operation, array $uriVariables = [], array $context = []): void
    {
        // Handle the state
        if (false === $data instanceof User) {
            return;
        }
        if ($operation->getName() === 'post') {
            $data->setUpdatedAt(new \DateTime());
        }

        $data->setPassword($this->passwordHasher->hashPassword($data, $data->getPlainPassword() ?? $data->getPassword()));
        
        $data->setCreatedAt(new \DateTimeImmutable());
        $data->setUpdatedAt(new \DateTimeImmutable());

        $this->entityManager->persist($data);
        $this->entityManager->flush();
    }
}
