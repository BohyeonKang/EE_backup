#include <stdio.h>

int main()
{
    int N,M;
    scanf("%d %d",&N,&M);

    int arr[N];
    for(int i=0; i<N; i++)
    {
        arr[i] = i+1;
    }

    int I,J;
    for(int i=0; i<M; i++)
    {
        scanf("%d %d",&I,&J);
        int tmp_arr[J-I+1];
        for(int j=0; j<J-I+1; j++)
        {
            tmp_arr[j] = arr[I-1+j];
        }
        for(int j=0; j<J-I+1; j++)
        {
            arr[I-1+j] = tmp_arr[J-I-j];
        }
    }
    for(int i=0; i<N; i++)
    {
        printf("%d ",arr[i]);
    }

    return 0;
}