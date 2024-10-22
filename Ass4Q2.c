#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>

void zombie_process()
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
                printf("Parent process (PID: %d) is running.\n", getpid());
                sleep(10);      //Sleep for a while to keep the parent alive
                printf("Parent process exiting...\n");
        }
        else
        {
                //Child process
                printf("Child process (PID: %d) is terminatng and becoming a zombie.\n", getpid());
                exit(0);        //Child exits immediately, becoming a zombie until parent collect status
        }

}

int main()
{
        zombie_process();

        return 0;
}


/*
Output:
------
Parent process (PID: 52009) is running.
Child process (PID: 52010) is terminatng and becoming a zombie.
Parent process exiting...
*/
