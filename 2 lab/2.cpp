// OpenMPExample.cpp : Defines the entry point for the console application.
//
#define _CRT_SECURE_NO_WARNINGS

#include <omp.h>
#include "stdio.h"
#include "iostream"
#include "math.h"
#include <sys/time.h>
#include <sys/types.h>

const float start = 0.01;
const float end = 0.001;
const int maxCountThreads = 16;
const float upLimit = 1;
const int countCheckCycle = 1000;
const float PI = 3.1415926/2;

#pragma intrinsic(__rdtsc)

//unsigned __int64 rdtsc() {
//    return __rdtsc();
//}

int main()
{
	printf("My parallel\n");
	double totalSum = 0;
	for (float dx = 0.01; dx > 0.0000001; dx *= 0.1) {
		printf("%f Computation count = %f \n", dx, 1.0/dx);
		totalSum = 0;
		for (int countTreads = 1; countTreads <= maxCountThreads; ++countTreads) {
			
			float field = 1.0/countTreads;
			
      struct timeval start, stop;
      gettimeofday(&start, 0);
      
      omp_set_dynamic(0);
			omp_set_num_threads(countTreads);			
			#pragma omp parallel 
			{				
				float start = field * omp_get_thread_num();
				float end = start + field;
				double parsum = 0;        
				totalSum = 0;
				for (int j = 0; j < countCheckCycle; ++j)
				{				
					for(float i = start; i < end; i+=dx)						
						parsum += fabs(dx* tan(i));	
				}
				totalSum += parsum;						
			}	
      gettimeofday(&stop, 0);
      float el = (float)(stop.tv_sec - start.tv_sec)*1000000 + (stop.tv_usec - start.tv_usec);
			
      printf("\t TreadCount = %d, Time = %f ", countTreads, el);	
			printf("sum = %f \n", totalSum);
			totalSum = 0;
		}		
	}	
	//fclose(fout);
	//printf("asd");
	//_getch();
	return 0;
}

