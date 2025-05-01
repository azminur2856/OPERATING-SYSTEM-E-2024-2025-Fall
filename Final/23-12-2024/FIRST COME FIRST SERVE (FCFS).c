#include<stdio.h>
#include<conio.h>

// starts program
void main() {
    char pn[10][10]; //char array to store the names of the processes
    int arr[10], bur[10], star[10], finish[10], tat[10], wt[10], i, n; // int arrays to store details about processes
    int totwt = 0, tottat = 0; // int type variables to keep track of total waiting time and total turnaround time
    //clrscr(); // clear screen (specific to older compilers)

    //print instruction and input number processes
    printf("Enter the number of processes:");
    scanf("%d", &n);

    //print instruction and input name, Arrival Time and Burst Time
    for(i = 0; i < n; i++) {
        printf("Enter the Process Name, Arrival Time & Burst Time:");
        scanf("%s%d%d", &pn[i], &arr[i], &bur[i]);
    }

    // calculate start time, waiting time, finish time, and turnaround time for each process
    for(i = 0; i < n; i++) {
        if(i == 0) {
            // calculation for the first process
            star[i] = arr[i]; // start time is the same as arrival time
            wt[i] = star[i] - arr[i]; // waiting time is 0 for the first process
            finish[i] = star[i] + bur[i]; // finish time is start time + burst time
            tat[i] = finish[i] - arr[i]; // turnaround time is finish time - arrival time
        } else {
            // for other processes
            star[i] = finish[i - 1];
            wt[i] = star[i] - arr[i];
            finish[i] = star[i] + bur[i];
            tat[i] = finish[i] - arr[i];
        }
    }

    // show process details
    printf("\nPName Arrtime Burtime Start TAT Finish");
    for(i = 0; i < n; i++) {
        printf("\n%s\t%6d\t\t%6d\t%6d\t%6d\t%6d",
               pn[i], arr[i], bur[i], star[i], tat[i], finish[i]);

        totwt += wt[i]; // add waiting time for this process to total waiting time
        tottat += tat[i]; // add turnaround time for this process to total turnaround time
    }

    // Calculate and show the average waiting time and average turnaround time
    printf("\nAverage Waiting time: %f", (float)totwt / n);
    printf("\nAverage Turn Around Time: %f", (float)tottat / n);

    getch(); // wait for a key press before closing the program
}
