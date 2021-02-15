<?php


namespace Console\App\Entity;


use App\Entity\EntityRole;
use App\Model\Roles;

class EntitySkill
{
    /**
     * @var EntityRole
     */
    protected $role;

    /**
     * @var array
     */
    protected $skills = [];

    public function __construct(EntityRole $role)
    {
        $roles = new Roles();

        $this->role = $role;

        $this->skills = $roles->getSkills($role);
    }

    /**
     * @return array
     */
    public function getSkills(): array
    {
        return $this->skills;
    }

    /**
     * @param string $skill
     * @return bool
     */
    public function getPermission(string $skill): bool
    {
        return isset($this->skills[$skill]) ? true : false;
    }
}