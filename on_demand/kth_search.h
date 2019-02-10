#include <iostream>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>

#define N 100
#define Q 1
#define K 5

void swap(int arr[K][2], int i, int j);

void copy2(int src[2], int dst[2]);

void copy3(int src[3], int dst[3]);

int diff(int dst[3]);

void heapify(int arr[K][2], int i);

void dequeue(int arr[K][2]);

void enqueue(int arr[K][2], int p[2]);

void verify(int arr[K][2], int p[2]);

//void execute(int points[N][3], int q[3], int result[K][3]);
void execute(int points[N][3], int q[3], int result[K][2]);
