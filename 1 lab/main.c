#include <stdio.h>
#include <math.h>
#include <time.h>
#include <stdint.h>
#include <sys/stat.h>
#include <sys/time.h>
#include <sys/types.h>
#define SIZE 32768

typedef long FIX;
typedef FIX (*PFIX)(FIX);

const int fix_p = 26;

#define flfixcoef (float)(1 << fix_p)
#define FIX_MUL(a, b) ( (FIX) ((a * b) >> fix_p) )
#define FIX_DIV(a, b) ( (FIX) ((a / (b)) << fix_p) )
#define FIX_SUM(a, b) ( (FIX) ((a) + (b)) )
#define FIX_DIF(a, b) ( (FIX) ((a) - (b)) )
#define FIX_TO_FLOAT(a) ( (float)(a) / flfixcoef )
#define FLOAT_TO_FIX(a) ( (FIX) ((float)(a)*flfixcoef))

const int fix_table_pow = 12; // 8..15
#define fix_table_size (int)( 1 << fix_table_pow )	

typedef float (*PFLOAT)(float);

float bernully_2n[18] = {0.1666666666666667f,0.03333333333333333f,0.023809523809523808f,0.03333333333333333f,
    0.07575757575757576f,0.2531135531135531f,1.16666666666666666f,7.092156862745098f,54.9711779448621554f,529.1242424242424242f,
    6192.1231884057971014f, 86580.2531135531135531f, 1425517.1666666666666667f, 27298231.067816091954023f,601580873.9006423683843039f,
    15116315767.092156862745098f, 429614643061.1666666666666667f };

float coeficent[18] = { 1.0f,//00000000000000000000000,
    0.3333333f,//43267440795898437500000,
    0.1333333f,//40287208557128906250000,
    0.0539682544767856f,//59790039062500,
    0.0218694880604744f,//95751953125000,
    0.0088632358238101f,//00555419921875,
    0.0035921281669288f,//87367248535156,
    0.0014558344846591f,//35341644287109,
    0.0005900274263695f,//88239288330078,
    0.0002391291345702f,//48425006866455,
    0.0000969153770711f,//27295494079590,
    0.0000392783185816f,//36995077133179,
    0.0000159189039550f,//25598406791687,
    0.0000064516889324f,//29533451795578,
    0.0000026147708922f,//50817269086838,
    0.0000010597267419f,//14346348494291,
    0.0000004294910525f//00452497042716
};

float fact(int x) {
    return !x ? 1 : x * fact(x - 1);
}

// -----------------------------------
// Реализация чисел с плавующей точкой
// -----------------------------------


float FlMath(float num) {
    return tanf(num);
}

/* наивная реализация с циклом */
float FlCyclNoGorner(float num) {
    float res = 0;
    int i;
    for (i = 1; i <= 17 ; i++) {
        //float coef = bernully_2n[i-1]*(float)(pow(2,2*i)*(pow(2,2*i)-1))/fact(2*i);
        res += coeficent[i-1] * powf(num,2*i-1);
    }
    return res;
}

/* наивная реализация без цикла */
float FlNoCyclNoGorner(float num) {
    float res = 0;
    res += coeficent[0] * num;
    res += coeficent[1] * powf(num,3);
    res += coeficent[2] * powf(num,5);
    res += coeficent[3] * powf(num,7);
    res += coeficent[4] * powf(num,9);
    res += coeficent[5] * powf(num,11);
    res += coeficent[6] * powf(num,13);
    res += coeficent[7] * powf(num,15);
    res += coeficent[8] * powf(num,17);
    res += coeficent[9] * powf(num,19);
    res += coeficent[10] * powf(num,21);
    res += coeficent[11] * powf(num,23);
    res += coeficent[12] * powf(num,25);
    res += coeficent[13] * powf(num,27);
    res += coeficent[14] * powf(num,29);
    res += coeficent[15] * powf(num,31);
    res += coeficent[16] * powf(num,33);
    //res += coeficent[17] * powf(num,35);
    return res;
}

/* реализация с циклом по Горнеру*/
float FlCyclGorner(float x) {
    int i = 17;
    float sq = x*x;
    float res = coeficent[i];
    while (--i >= 0) {
        res *= sq;
        res += coeficent[i];
    }
	res *= x;
    return res;
}

/* реализация без цикла по Горнеру */
float FlNoCyclGorner(float x) {
    float sq = x*x;
    return ((((((((((((((((coeficent[16]*sq
                           + coeficent[15])*sq
                          + coeficent[14])*sq
                         + coeficent[13])*sq
                        + coeficent[12])*sq
                       + coeficent[11])*sq
                      + coeficent[10])*sq
                     + coeficent[9])*sq
                    + coeficent[8])*sq
                   + coeficent[7])*sq
                  + coeficent[6])*sq
                 + coeficent[5])*sq
                + coeficent[4])*sq
               + coeficent[3])*sq
              + coeficent[2])*sq
             + coeficent[1])*sq
            + coeficent[0])*x;
}

/* проверка точности выполнения функции */
int flverify (float x, PFLOAT p) {
    float accuracy = (float)pow(2,-20);
    return fabs((float)(tan(x) - p(x))) > accuracy;
}

/* подсчет тактов rdtsc */
__inline__ uint64_t rdtsc(void) {
    uint32_t lo,hi;
    __asm__ __volatile__ ("xorl %%eax, %%eax \n cpuid" ::: "%rax", "%rbx", "%rcx", "%rdx");
    __asm__ __volatile__ ("rdtsc": "=a" (lo), "=d" (hi));
    return (uint64_t) hi << 32 | lo;
}

/* тестовая функция подсчета времени с помощбю rdtsc и timeval-a*/

/*void timeFunc(PFLOAT p) {
    float i,sum =0 ;
    //uint64_t start = rdtsc();
    struct timeval start, stop;
    gettimeofday(&start, 0);
    for ( i = 0; i < 1; i += 0.000001f) {
        sum += p(i);
    }
    gettimeofday(&stop, 0);
    float el = (float)((stop.tv_sec - start.tv_sec)*1000000000 + (stop.tv_usec - start.tv_usec)*1000)/ 1000000.0f;
    //uint64_t finish = rdtsc();
    //printf("%f \n", sum);
    printf("time: %f\n", el);
    //return (long)(finish-start)/100000;
}
*/

/* тестирования на точность функции на отрезке [0,1] с шагом 0.00001*/
void testingFloat (PFLOAT p) {
    float i;
    for ( i = 0; i < 1; i += 0.00001f) {
        if (flverify(i,p)) {
            printf("flverify: %f\n", i);
            break;
        }
    }
}


// ---------------------------------------
// Реализация чисел с фиксированной точкой
// ---------------------------------------


FIX fixCoeficent[18];

/* создание коэфицентов с фиксированной точкой*/
void initFixCoef() {
    for (int i = 0; i <= 18; ++i) {
        fixCoeficent[i] = FLOAT_TO_FIX(coeficent[i]);
    }
}

/* проверка на точность функции с фиксированной точкой */
 int fixverify(FIX x, PFIX p) {
     float accuracy = (float) pow(2,-20);
     return fabs((tan(FIX_TO_FLOAT(x))- FIX_TO_FLOAT(p(x)))) > accuracy;
 }

/* тестирование точности функции на отрезки от [0,1] с шагом 0.00001 */
void testingFix (PFIX p) {
    float i;
    for ( i = 0; i < 1; i += 0.00001f) {
        if (fixverify(FLOAT_TO_FIX(i),p)) {
            printf("fixverify: %f\n", i);
            break;
        }
    }
}

/* оценка времени функций с плавающей точкой*/
void timeF(PFLOAT func) {
    float res = 0;
    const int countLoop = 100;
    const int countChecks = 5;
    //float sum = 0;
    for (int k = 0; k < countChecks; k++) {
        clock_t start = clock();
        for (int j = 0; j < countLoop; ++j) {
            for (float i = 0; i <= 1; i += 0.0001f) {
                res += func(i);
                //sum+= func(i);
            }
        }
        printf("%.30f\n", res);
        printf("%.30f\n" , (double)(clock() - start) / (double)CLOCKS_PER_SEC / 10001.0 / countLoop * 1000000000);
		/// (double) CLOCKS_PER_SEC
    }
}

/* оценка времени функций с фиксированной точкой */
void timeFIX(PFIX func) {
    FIX res = 0;
    const int countLoop = 100;
    const int countChecks = 5;
    //FIX sum = 0;
    const FIX one = FLOAT_TO_FIX(1.0f);
    const FIX increment = FLOAT_TO_FIX(0.001f);
    
    for (int k = 0; k < countChecks; k++) {
        clock_t start = clock();
        for (int j = 0; j < countLoop; ++j) {
            for (FIX i = 0; i <= one; i += increment) {
                res += func(i);
                //sum+= func(i);
            }
        }
        printf("%.30f\n", FIX_TO_FLOAT(res));
        printf("%.30f\n", (double)(clock() - start) / (double)CLOCKS_PER_SEC  / 1001.0f / countLoop * 1000000000);
    }
}

/* реализация для числа с фиксированной точкой с циклом по Горнеру */
 FIX FixCyclGorner(FIX x) {
     int i = 18;
     FIX sq = (x*x) >> fix_p;
     FIX res = fixCoeficent[i];
     while (--i >= 0) {
         res = (res*sq) >> fix_p;
         res = res + fixCoeficent[i];
     }
     res = (res*x) >> fix_p;
     return res;
 }

/* реализация для числа с фиксированной точкой без цикла по Горнеру */
 FIX FixNoCyclGorner(FIX arg) {
     FIX x = FIX_MUL(arg, arg);
     FIX result = FIX_MUL(x, fixCoeficent[17]);
     result = FIX_SUM(result, fixCoeficent[16]);
     result = FIX_MUL(result, x);
     result = FIX_SUM(result, fixCoeficent[15]);
     result = FIX_MUL(result, x);
     result = FIX_SUM(result, fixCoeficent[14]);
     result = FIX_MUL(result, x);
     result = FIX_SUM(result, fixCoeficent[13]);
     result = FIX_MUL(result, x);
     result = FIX_SUM(result, fixCoeficent[12]);
     result = FIX_MUL(result, x);
     result = FIX_SUM(result, fixCoeficent[11]);
     result = FIX_MUL(result, x);
     result = FIX_SUM(result, fixCoeficent[10]);
     result = FIX_MUL(result, x);
     result = FIX_SUM(result, fixCoeficent[9]);
     result = FIX_MUL(result, x);
     result = FIX_SUM(result, fixCoeficent[8]);
     result = FIX_MUL(result, x);
     result = FIX_SUM(result, fixCoeficent[7]);
     result = FIX_MUL(result, x);
     result = FIX_SUM(result, fixCoeficent[6]);
     result = FIX_MUL(result, x);
     result = FIX_SUM(result, fixCoeficent[5]);
     result = FIX_MUL(result, x);
     result = FIX_SUM(result, fixCoeficent[4]);
     result = FIX_MUL(result, x);
     result = FIX_SUM(result, fixCoeficent[3]);
     result = FIX_MUL(result, x);
     result = FIX_SUM(result, fixCoeficent[2]);
     result = FIX_MUL(result, x);
     result = FIX_SUM(result, fixCoeficent[1]);
     result = FIX_MUL(result, x);
     result = FIX_SUM(result, fixCoeficent[0]);
     result = FIX_MUL(result, arg);
     return result;
 }
//=============================================================================
// Табличная реализация
//=============================================================================

FIX fixCoefTable[SIZE][3];
float coefTable[SIZE][2];

/* тестовая функция для подсчета времени для чисел с фиксированной запятой*/

/*void fixCountTacts(PFIX p) {
    //uint64_t tstart;
    //uint64_t tfinish;
    //printf("\n");
    FIX sum = 0, i;
    const FIX one = FLOAT_TO_FIX(1.0f);
    const FIX increment = FLOAT_TO_FIX(0.000001f);
    //tstart = rdtsc();
    struct timeval start, stop;
    
    gettimeofday(&start, 0);
    for ( i = 0; i < one; i += increment) {
        sum += p(i);
    }
    gettimeofday(&stop, 0);
    float el = (float)((stop.tv_sec - start.tv_sec)*1000000000 + (stop.tv_usec - start.tv_usec)*1000);
    //tfinish = rdtsc();
    //printf("%f \n", FIX_TO_FLOAT(sum));
    //printf("time: %lli\n", (uint64_t)(tfinish-tstart)/10000);
    printf("time: %.30f\n", el);
    //return (long)(tfinish - tstart)/100000;
}
*/

/* создание таблицы с коэфицентами для формулы f(x) = f(a) + (x-h)*f'(a) + ... */
void initTable() {
    float x = 0;
	float h = 1.0F / fix_table_size;
	int i;
    //printf("fix = %d\n", fix_table_size);
    for (i = 0; i < fix_table_size; ++i) {
        //coefTable[i][0] = 2*sinf(x)/3*powf(cosf(x),3.0F);
        //coefTable[i][1] = 1/powf(cosf(x),2.0F);
        fixCoefTable[i][0] = FLOAT_TO_FIX(tanf(x)); // f(a)
		fixCoefTable[i][1] = FLOAT_TO_FIX(1/powf(cosf(x),2.0F)); //f'(a)
		fixCoefTable[i][2] = FLOAT_TO_FIX(2*sinf(x)/2*powf(cosf(x),3.0F)); //f''(a)
		x += h;
	}
}

/* табличная реализация с функцией для числа с фиксированной точкой*/
FIX fixTable(FIX x) {
    const int index = (int) (x >> (fix_p - fix_table_pow));
    const FIX xh = x & ((1 << (fix_p - fix_table_pow))-1);
    FIX res = fixCoefTable[index][0];
    res = FIX_SUM(res, FIX_MUL(fixCoefTable[index][1], xh));
    return res;
}



//-------------------------------------------
// Вывод
//-------------------------------------------

void viewFloatTime(float i) {
    printf("FlMath: %.30f\n", FlMath(i));
    timeF(FlMath);
    printf("FlCyclNoGorner: %.30f\n", FlCyclNoGorner(i));
    timeF(FlCyclNoGorner);
    testingFloat(FlCyclNoGorner);
    printf("FlNoCyclNoGorner: %.30f\n", FlNoCyclNoGorner(i));
    timeF(FlNoCyclNoGorner);
    testingFloat(FlNoCyclNoGorner);
    printf("FlCyclGorner: %.30f\n", FlCyclGorner(i));
    timeF(FlCyclGorner);
    testingFloat(FlCyclGorner);
    printf("FlNoCyclGorner: %.30f\n", FlNoCyclGorner(i));
    timeF(FlNoCyclGorner);
    testingFloat(FlNoCyclGorner);
}

void viewFixTime(float i) {
    initTable();
    initFixCoef();
    printf("FixCyclGorner: %.30f\n",FIX_TO_FLOAT(FixCyclGorner(FLOAT_TO_FIX(i))));
    timeFIX(FixCyclGorner);
    testingFix(FixCyclGorner);
    printf("FixNoCyclGorner: %.30f\n",FIX_TO_FLOAT(FixNoCyclGorner(FLOAT_TO_FIX(i))));
    timeFIX(FixNoCyclGorner);
    testingFix(FixNoCyclGorner);
    printf("TableFix: %.30f\n",FIX_TO_FLOAT(fixTable(FLOAT_TO_FIX(i))));
    timeFIX(fixTable);
    testingFix(fixTable);

}

int main () {
    float i = 0.6f;
    viewFloatTime(i);
    viewFixTime(i);
    return 0;
}