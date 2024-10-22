#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>

void orphan_process()
{
        pid_t pid = fork();     //fork the process to create a child

        if(pid < 0)
        {
                //fork failed
                printf("Fork failed\n");
                return;
        }
        else if(pid > 0)
        {
                //Parent process
                printf("Parent process (PID: %d) is terminating.\n", getpid());
		exit(0);	//parent exits, child become orphan
        }
        else
        {
                //Child process
		printf("Child process (PID: %d) has parent process (PPID: %d).\n", getpid(), getppid());

		sleep(5);

		//After sleep, the child sould now be an orphan process and aopted by init/systemd
                printf("Child process (PID: %d) now has new parent process (PPID: %d), adopted by init/systemd.\n", getpid(), getppid());
        }

}

int main()
{
        orphan_process();

        return 0;
}

/*
Output:
------
Parent process (PID: 51950) is terminating.
Child process (PID: 51951) has parent process (PPID: 51950).
comp@comp-HP-Desktop-M01-F2xxx:~/Soumyadeep_Adak$ Child process (PID: 51951) now has new parent process (PPID: 947), adopted by init/systemd.


*/
