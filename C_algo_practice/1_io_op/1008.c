#include <stdio.h>

int main()
{
    double num1, num2, sum;
    scanf("%lf %lf",&num1,&num2);
    sum = num1 / num2;
    printf("%.11lf",sum);

    return 0;
}