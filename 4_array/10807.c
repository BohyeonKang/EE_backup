#include <stdio.h>

int main()
{
    int N = 0;
    scanf("%d",&N);

    int numarr[N];

    int tmp = 0;
    for(int i=0; i<N; i++)
    {
        scanf("%d",&tmp);
        numarr[i] = tmp;
    }
    
    int v = 0;
    scanf("%d",&v);

    int cnt = 0;
    for(int i=0; i<N; i++)
    {
        if(numarr[i]==v)
        {
            cnt++;
        }
    }

    printf("%d",cnt);

    return 0;
}