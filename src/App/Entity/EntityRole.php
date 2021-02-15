<?php


namespace App\Entity;

use App\Model\Roles;

class EntityRole
{
    /**
     * @var string
     */
    protected $role;

    /**
     * @var string
     */
    protected $roleDescription;

    public function __construct(string $role)
    {
        $roles = new Roles();

        $this->role = $roles->getRole($role);

        $this->roleDescription = $roles->getRoleDescription($role);
    }

    /**
     * @return string|null
     */
    public function getRole()
    {
        return $this->role;
    }

    /**
     * @return string
     */
    public function getRoleDescriotion(): string
    {
        return $this->roleDescription;
    }

}