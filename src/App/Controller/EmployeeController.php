<?php


namespace App\Controller;


use App\Entity\EntityRole;
use Console\App\Entity\EntitySkill;

class EmployeeController
{
    /**
     * @var EntityRole
     */
    protected $entityRole;

    /**
     * @var EntitySkill
     */
    protected $entitySkills;


    public function __construct(string $role)
    {
        $this->entityRole = new EntityRole($role);

        $this->entitySkills = new EntitySkill($this->entityRole);
    }

    /**
     * @return string|null
     */
    public function getRole()
    {
        return $this->entityRole->getRole();
    }

    /**
     * @return array
     */
    public function getSkills(): array
    {
        return $this->entitySkills->getSkills();
    }

    /**
     * @param string $skill
     * @return bool
     */
    public function getPermission(string $skill): bool
    {
        return $this->entitySkills->getPermission($skill);
    }
}