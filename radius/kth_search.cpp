#include "kth_search.h"
int heap_size = 0;
float query[3];

float diff(float dst[3]){

    return (query[0] - dst[0]) * (query[0] - dst[0])  + (query[1] - dst[1]) * (query[1] - dst[1]) + (query[2] - dst[2]) * (query[2] - dst[2]);
}

void copy2(float src[2], float dst[2]){

	dst[0] = src[0];
	dst[1] = src[1];
}

void copy3(float src[3], float dst[3]){
	copy3_label5:for(int i = 0; i < 3; i++){
		dst[i] = src[i];
	}
}

void verify(float arr[K][2], float p[3], float index, float radius) {

	float distance = diff(p);

	if(distance < radius){
		arr[heap_size][0] = distance;
		arr[heap_size][1] = index;
		heap_size++;
	}
}


void execute(float points[N][3], float q[3], float result[K][2], float radius){
//void execute(float points[N][3], float q[3], float result[K][3], float radius){

	float pqueue[K][2] = {};

	heap_size = 0;
	copy3(q, query);

	execute_label2:for(int i = 0; i < N; i++){

		verify(pqueue, points[i], i, radius);
//		verify(result, points[i], i);
	}
//
//	execute_label4:for(int i = 0; i < K; i++){
//		copy3(points[(int)(pqueue[i][1])],result[i]);
//	}

}
