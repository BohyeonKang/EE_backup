#include <stdio.h>

int main()
{
    int A, B, tmp;
    tmp = scanf("%d %d",&A,&B);
    while(tmp==2)
    {
        printf("%d\n",A+B);
        tmp = scanf("%d %d",&A,&B);
    }
    return 0;
}