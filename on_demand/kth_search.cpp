#include "kth_search.h"
int heap_size = 0;
int query[3];

void swap(int arr[K][2], int i, int j){

	int temp = arr[i][0];
	arr[i][0] = arr[j][0];
	arr[j][0] = temp;

	temp = arr[i][1];
	arr[i][1] = arr[j][1];
	arr[j][1] = temp;

}

void copy2(int src[2], int dst[2]){

	dst[0] = src[0];
	dst[1] = src[1];
}

void copy3(int src[3], int dst[3]){

	copy3_label3:for(int i = 0; i < 3; i++){
		dst[i] = src[i];
	}
}
int diff(int dst[3]){

    return (query[0] - dst[0]) * (query[0] - dst[0])  + (query[1] - dst[1]) * (query[1] - dst[1]) + (query[2] - dst[2]) * (query[2] - dst[2]);
}

void heapify(int arr[K][2], int i) {

    int l = 2 * i + 1;
    int r = 2 * i + 2;
    int max = i;

    if (l < heap_size && arr[l][0] > arr[i][0]) {

        max = l;
    }

    if (r < heap_size && arr[r][0] > arr[max][0]) {

        max = r;
    }


    heapify_label0:while (max != i) {

        swap(arr, i, max);
        l = 2 * i + 1;
        r = 2 * i + 2;
        max = i;

        if (l < heap_size && arr[l][0] > arr[i][0]) {

			max = l;
		}

		if (r < heap_size && arr[r][0] > arr[max][0]) {

			max = r;
		}

    }
}

void dequeue(int arr[K][2]){

    copy2(arr[heap_size -1], arr[0]);
    heapify(arr, 0);
}

void enqueue(int arr[K][2], int p[2]){

    if(heap_size == 1){

        copy2(p, arr[0]);
        return;
    }

    int i = heap_size - 1;
    copy2(p, arr[i]);


    enqueue_label1:while(arr[(i-1)/2][0] < arr[i][0]){

        swap(arr, i, (i-1)/2);
        i = (i-1)/2;
    }
}

void verify(int arr[K][2], int p[3], int index) {

	int pair [2];
	pair[0] = diff(p);
	pair[1] = index;

    if(heap_size < K){

        heap_size++;

        enqueue(arr, pair);
    }
    else {

        if (pair[0] < arr[0][0]){

            dequeue(arr);

            enqueue(arr, pair);
        }
    }
}


void execute(int points[N][3], int q[3], int result[K][2]){
//void execute(int points[N][3], int q[3], int result[K][3]){

//	int pqueue[K][2];

	heap_size = 0;
	copy3(q, query);

	execute_label2:for(int i = 0; i < N; i++){

//		verify(pqueue, points[i], i);
		verify(result, points[i], i);
	}
//
//
//	execute_label4:for(int i = 0; i < K; i++){
//		copy3(points[pqueue[i][1]],result[i]);
//	}

}
