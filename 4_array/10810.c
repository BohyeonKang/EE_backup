#include <stdio.h>

int main()
{
    int N,M;
    scanf("%d %d",&N,&M);

    int box[N];
    for(int i=0; i<N; i++)
    {
        box[i] = 0;
    }

    for(int i=0; i<M; i++)
    {
        int I,J,K;
        scanf("%d %d %d",&I,&J,&K);
        for(int j=I-1; j<J; j++)
        {
            box[j] = K;
        }
    }

    for(int i=0; i<N; i++)
    {
        printf("%d ",box[i]);
    }

    return 0;
}