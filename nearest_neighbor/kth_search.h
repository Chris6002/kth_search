#include <iostream>
#include <stdio.h>
#include <stdlib.h>

#define N 100
#define Q 1
#define K 1

void copy3(int src[3], int dst[3]);

int diff(int dst[3]);

void verify(int arr[2], int p[3], int index);

//void execute(int points[N][3], int q[3], int result[3]);
void execute(int points[N][3], int q[3], int result[2]);
