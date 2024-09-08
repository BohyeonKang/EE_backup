#include <stdio.h>

int main()
{
    int tmp1, tmp2;
    scanf("%d",&tmp1);
    scanf("%d",&tmp2);
    if(tmp1>0 && tmp2>0) printf("1");
    else if(tmp1<0 && tmp2>0) printf("2");
    else if(tmp1<0 && tmp2<0) printf("3");
    else if(tmp1>0 && tmp2<0) printf("4");
    
    return 0;
}