#include<stdio.h>
#include<conio.h>

// starts program
void main() {
    int et[30], ts, n, i, x = 0, tot = 0; // arrays and variables to store estimated times, time quantum, total time, etc.
    char pn[10][10]; // array to store process names

    //clrscr(); // clear screen (specific to older compilers)

    // input the number of processes
    printf("Enter the no of processes:");
    scanf("%d", &n);

    // input the time quantum
    printf("Enter the time quantum:");
    scanf("%d", &ts);

    // input the process names and their estimated execution times
    for(i = 0; i < n; i++) {
        printf("Enter process name & estimated time:");
        scanf("%s %d", pn[i], &et[i]);
    }

    // display the process list
    printf("The processes are:");
    for(i = 0; i < n; i++) {
        printf("process %d: %s\n", i + 1, pn[i]);
    }

    // calculate the total estimated time
    for(i = 0; i < n; i++) {
        tot = tot + et[i];
    }

    // implement round-robin scheduling
    while(x != tot) { // loop until total time is accounted for
        for(i = 0; i < n; i++) {
            if(et[i] > ts) { // if remaining execution time is greater than the time quantum
                x = x + ts; // increment total elapsed time by time quantum
                printf("\n %s -> %d", pn[i], ts); // display process and time quantum
                et[i] = et[i] - ts; // reduce the remaining execution time
            } else if((et[i] <= ts) && et[i] != 0) { // if remaining time is less than or equal to time quantum
                x = x + et[i]; // increment total elapsed time by remaining time
                printf("\n %s -> %d", pn[i], et[i]); // display process and remaining time
                et[i] = 0; // mark process as completed
            }
        }
    }

    // display the total estimated time
    printf("\n Total Estimated Time:%d", x);


    getch(); // wait for a key press before closing the program
}
