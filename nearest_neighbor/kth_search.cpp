#include "kth_search.h"
int query[3];

int diff(int dst[3]){

    return (query[0] - dst[0]) * (query[0] - dst[0])  + (query[1] - dst[1]) * (query[1] - dst[1]) + (query[2] - dst[2]) * (query[2] - dst[2]);
}


void copy3(int src[3], int dst[3]){
	copy3_label5:for(int i = 0; i < 3; i++){
		dst[i] = src[i];
	}
}

void verify(int arr[2], int p[3], int index) {

	int distance = diff(p);

	if(distance < arr[0]){

		arr[0] = distance;
		arr[1] = index;
	}
}


void execute(int points[N][3], int q[3], int result[2]){
//void execute(int points[N][3], int q[3], int result[3]){

//	int nearest[2];
//	nearest[0] = diff(points[0]);
//	nearest[1] = 0;

	result[0] = diff(points[0]);
	result[1] = 0;

	copy3(q, query);

	execute_label2:for(int i = 1; i < N; i++){

//		verify(nearest, points[i], i);
		verify(result, points[i], i);

	}

//	execute_label4:for(int i = 0; i < K; i++){
//		copy3(points[nearest[1]],result);
//	}

}
