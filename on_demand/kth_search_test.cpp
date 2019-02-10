#include <stdio.h>
#include <stdlib.h>
#include <iostream>

#include "kth_search.h"

void printArray(int arr[K][3]){

    for(int i =0; i < K; i++) {
        std::cout << arr[i][0] << " " << arr[i][1] << " " << arr[i][2] << "\n";
    }
    std::cout << "-----------------------------------\n";
}

void copyArr(int src[3], int dst[3]){

    for(int n = 0; n < 3; n++){

        dst[n] = src[n];
    }
}

int main() {

	static int points[N][3];
	static int query[Q][3];


    for(int n = 0; n < N; n++){
        int i[3] = {rand()%5, rand()%5, rand()%5};
        printf("input: %d %d %d\n", i[0], i[1], i[2]);
        copyArr(i, points[n]);
    }

    for(int q = 0; q < Q; q++){

		int i[3] = {0, 0, 0};
		printf("query: %d %d %d\n", i[0], i[1], i[2]);
		copyArr(i, query[q]);
	}

//
//    for(int q = 0; q < Q; q++){
//
//    	int result[K][3] = {};
//        execute(points, query[q], result);
//        printArray(result);
//    }

    static int result[K][2] = {};
//    static int result[K][3] = {};
	execute(points, query[0], result);
//	printArray(result);


    return 0;
}
