#include <stdio.h>

int main()
{
    int num1, num2;
    int tmp1, tmp2, tmp3, tmp4, tmp5;
    scanf("%d %d",&num1,&num2);
    tmp1 = num1 + num2;
    tmp2 = num1 - num2;
    tmp3 = num1 * num2;
    tmp4 = num1 / num2;
    tmp5 = num1 % num2;
    printf("%d\n%d\n%d\n%d\n%d\n",tmp1,tmp2,tmp3,tmp4,tmp5);
    return 0;
}