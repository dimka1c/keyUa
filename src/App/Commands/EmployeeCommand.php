<?php


namespace Console\App\Commands;

use App\Controller\EmployeeController;
use Symfony\Component\Console\{
    Command\Command,
    Input\InputInterface,
    Input\InputArgument,
    Output\OutputInterface,
};


class EmployeeCommand extends Command
{
    protected static $defaultName = 'company:employee';

    protected function configure()
    {
        $this->setDescription('Employee')
            ->setHelp('Help employee')
            ->addArgument('position', InputArgument::REQUIRED, 'Pass the posiyion')
            ->addArgument('skill', InputArgument::OPTIONAL, 'skill');
    }

    protected function execute(InputInterface $input, OutputInterface $output)
    {
        $employee = new EmployeeController($input->getArgument('position'));

        if ($input->getArgument('skill')) {
            $actionPermission = $employee->getPermission($input->getArgument('skill'));

            $output->writeln($actionPermission ? '<fg=green>true</>' : '<fg=red>false</>');

            return 0;
        }

        if ($employee->getRole()) {
            $output->writeln(sprintf('Role: <comment>%s</comment>', $input->getArgument('position')));

            if ($employee->getSkills()) {
                foreach ($employee->getSkills() as $key => $item) {
                    $output->writeln(sprintf('<comment>Skill: <fg=green>' .  $key . '</> - ' . $item , '</comment>'));
                }
            }

        } else {

            $output->writeln(sprintf('Role %s not found', $input->getArgument('position')));
        }

        return 0;
    }
}