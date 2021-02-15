<?php


namespace App\Model;


use App\Entity\EntityRole;

class Roles
{
    protected $roles = [
        'programmer'    => [
            'description' => 'Программист',
            'skills' => [
                'writeCode' => 'писать код',
                'testCode' => 'тестировать код',
                'communicateManager' => 'общаться с менеджером'
            ]
        ],
        'designer'    => [
            'description' => 'Дизайнер',
            'skills' => [
                'draw' => 'рисовать',
                'communicateManager' => 'общаться с менеджером',
            ]
        ],
        'tester'    => [
            'description' => 'Тестировщик',
            'skills' => [
                'testCode' => 'тестировать код',
                'communicateManager' => 'общаться с менеджером',
                'setTasks' => 'ставить задачи'
            ]
        ],
        'manager'    => [
            'description' => 'Менеджер',
            'skills' => [
                'setTasks' => 'ставить задачи',
            ]
        ],
    ];

    public function getRoles()
    {
        return $this->roles;
    }

    public function getRole(string $role)
    {
        return isset($this->roles[$role]) ? $role : null;
    }

    public function getRoleDescription(string $role)
    {
        return $this->roles[$role]['description'] ?? null;
    }

    public function getSkills(EntityRole $role)
    {
        return $this->roles[$role->getRole()]['skills'] ?? [];
    }
}