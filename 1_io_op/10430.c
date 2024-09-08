#include <stdio.h>

int main()
{
    int A, B, C;
    int tmp1, tmp2, tmp3, tmp4;
    scanf("%d %d %d",&A,&B,&C);
    
    tmp1 = (A+B)%C;
    tmp2 = ((A%C) + (B%C))%C;
    tmp3 = (A*B)%C;
    tmp4 = ((A%C) * (B%C))%C;

    printf("%d\n%d\n%d\n%d\n",tmp1,tmp2,tmp3,tmp4);

    return 0;
}