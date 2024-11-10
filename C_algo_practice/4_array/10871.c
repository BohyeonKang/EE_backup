#include <stdio.h>

int main()
{
    int N,X;
    scanf("%d %d",&N,&X);

    int numarr[N];
    for(int i=0; i<N; i++)
    {
        scanf("%d",&numarr[i]);
    }
    for(int i=0; i<N; i++)
    {
        if(numarr[i]<X)
        {
            printf("%d ",numarr[i]);
        }
    }
    
    return 0;
}