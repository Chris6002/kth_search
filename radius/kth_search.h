#include <iostream>
#include <stdio.h>
#include <stdlib.h>

#define N 100
#define Q 1
#define K 100

void swap(int arr[K][2], int i, int j);

void copy2(int src[2], int dst[2]);

void copy3(int src[3], int dst[3]);

int diff(int dst[3]);

void verify(int arr[K][2], int p[3], int index, int radius);

//void execute(int points[N][3], int q[3], int result[K][3], int radius);
void execute(int points[N][3], int q[3], int result[K][2], int radius);
