#include <iostream>
#include <stdio.h>
#include <stdlib.h>

#define N 100
#define Q 1
#define K 100

void swap(float arr[K][2], float i, float j);

void copy2(float src[2], float dst[2]);

void copy3(float src[3], float dst[3]);

float diff(float dst[3]);

void verify(float arr[K][2], float p[3], float index, float radius);

//void execute(float points[N][3], float q[3], float result[K][3], float radius);
void execute(float points[N][3], float q[3], float result[K][2], float radius);
