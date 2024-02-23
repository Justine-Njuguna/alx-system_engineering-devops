
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

/**
 * infinite_while - Infinite loop
 *
 * Return: Always 0
 */
int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}

/**
 * main - Entry point
 *
 * Return: Always 0
 */
int main(void)
{
	pid_t child_pid;
	int i;

	for (i = 0; i < 5; i++)
	{
		child_pid = fork();
		if (child_pid == 0)
		{
		/* Child process */
			exit(0);
		}
		else if (child_pid > 0)
		{
		/* Parent process */
			printf("Zombie process created, PID: %d\n", child_pid);
			sleep(1); /* Allow some time for the child to become a zombie */
		}
		else
		{
		/* Fork failed */
			perror("fork");
			exit(1);
		}
	}

	infinite_while(); /* Call infinite_while to keep the parent process running */

	return (0);
}
