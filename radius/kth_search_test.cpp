#include <stdio.h>
#include <stdlib.h>
#include <iostream>

#include "kth_search.h"

void printArray(float arr[K][3]){

    for(int i =0; i < K; i++) {
        std::cout << arr[i][0] << " " << arr[i][1] << " " << arr[i][2] << "\n";
    }
    std::cout << "-----------------------------------\n";
}

void copyArr(float src[3], float dst[3]){

    for(int n = 0; n < 3; n++){

        dst[n] = src[n];
    }
}

int main() {

	static float points[N][3];
	static float query[Q][3];


    for(int n = 0; n < N; n++){

    	float x = (float)rand()/(float)(RAND_MAX) * 5;
    	float y = (float)rand()/(float)(RAND_MAX) * 5;
    	float z = (float)rand()/(float)(RAND_MAX) * 5;
        float i[3] = {x, y, z};
        printf("input: %f %f %f\n", i[0], i[1], i[2]);
        copyArr(i, points[n]);
    }

    for(int q = 0; q < Q; q++){

		float i[3] = {0, 0, 0};
		printf("query: %f %f %f\n", i[0], i[1], i[2]);
		copyArr(i, query[q]);
	}

//
//    for(float q = 0; q < Q; q++){
//
//    	float result[K][3] = {};
//        execute(points, query[q], result);
//        printArray(result);
//    }

//    static float result[K][3] = {};
    static float result[K][2] = {};
    float radius = 7;
;
	execute(points, query[0], result, radius);
//	printArray(result);


    return 0;
}
