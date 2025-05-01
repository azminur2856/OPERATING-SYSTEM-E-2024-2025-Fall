#include<stdio.h>
#include<conio.h>
#include<string.h>

// starts program
void main() {
    int et[20], at[10], n, i, j, temp, st[10], ft[10], wt[10], ta[10]; // arrays to store execution time, arrival time, start time, finish time, waiting time, and turnaround time
    int totwt = 0, totta = 0; // variables to keep track of total waiting time and total turnaround time
    float awt, ata; // variables for average waiting time and average turnaround time
    char pn[10][10], t[10]; // array to store process names
    //clrscr(); // clear screen (specific to older compilers)

    // print instruction and input number of processes
    printf("Enter the number of process:");
    scanf("%d", &n);

    // input process name, arrival time, and execution time
    for(i = 0; i < n; i++) {
        printf("Enter process name, arrival time & execution time:");
        //flushall(); // clears the input buffer
        scanf("%s%d%d", pn[i], &at[i], &et[i]);
    }

    // sort processes by execution time using a nested loop
    for(i = 0; i < n; i++) {
        for(j = 0; j < n; j++) {
            if(et[i] < et[j]) {
                // swap execution time
                temp = et[i];
                et[i] = et[j];
                et[j] = temp;

                // swap arrival time
                temp = at[i];
                at[i] = at[j];
                at[j] = temp;

                // swap process names
                strcpy(t, pn[i]);
                strcpy(pn[i], pn[j]);
                strcpy(pn[j], t);
            }
        }
    }

    // calculate start time, waiting time, finish time, and turnaround time for each process
    for(i = 0; i < n; i++) {
        if(i == 0) {
            // calculation for the first process
            st[i] = at[i]; // start time is the same as arrival time
        } else {
            // calculation for subsequent processes
            st[i] = ft[i - 1];
        }
        wt[i] = st[i] - at[i]; // waiting time = start time - arrival time
        ft[i] = st[i] + et[i]; // finish time = start time + execution time
        ta[i] = ft[i] - at[i]; // turnaround time = finish time - arrival time

        // accumulate total waiting time and turnaround time
        totwt += wt[i];
        totta += ta[i];
    }

    // calculate average waiting time and average turnaround time
    awt = (float)totwt / n;
    ata = (float)totta / n;

    // print process details
    printf("\nPname\tarrivaltime\texecutiontime\twaitingtime\ttatime");
    for(i = 0; i < n; i++) {
        printf("\n%s\t%5d\t\t%5d\t\t%5d\t\t%5d", pn[i], at[i], et[i], wt[i], ta[i]);
    }

    // print average waiting time and turnaround time
    printf("\nAverage waiting time is: %f", awt);
    printf("\nAverage turnaround time is: %f", ata);

    getch(); // wait for a key press before closing the program
}
