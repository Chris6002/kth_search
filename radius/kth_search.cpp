#include "kth_search.h"
int heap_size = 0;
int query[3];

int diff(int dst[3]){

    return (query[0] - dst[0]) * (query[0] - dst[0])  + (query[1] - dst[1]) * (query[1] - dst[1]) + (query[2] - dst[2]) * (query[2] - dst[2]);
}

void copy2(int src[2], int dst[2]){

	dst[0] = src[0];
	dst[1] = src[1];
}

void copy3(int src[3], int dst[3]){
	copy3_label5:for(int i = 0; i < 3; i++){
		dst[i] = src[i];
	}
}

void verify(int arr[K][2], int p[3], int index, int radius) {

	int distance = diff(p);
	if(distance < radius){
		arr[heap_size][0] = distance;
		arr[heap_size][1] = index;
		heap_size++;
	}
}


void execute(int points[N][3], int q[3], int result[K][2], int radius){
//void execute(int points[N][3], int q[3], int result[K][3], int radius){

	int pqueue[K][2] = {};

	heap_size = 0;
	copy3(q, query);

	execute_label2:for(int i = 0; i < N; i++){

		verify(pqueue, points[i], i, radius);
//		verify(result, points[i], i);
	}
//
//	execute_label4:for(int i = 0; i < K; i++){
//		copy3(points[pqueue[i][1]],result[i]);
//	}

}
