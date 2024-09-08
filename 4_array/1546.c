#include <stdio.h>

int main()
{
    int N;
    scanf("%d",&N);
    double arr[N];
    for(int i=0; i<N; i++)
    {
        scanf("%lf",&arr[i]);
    }
    double max = 0;
    for(int i=0; i<N; i++)
    {
        if(arr[i]>max)
        {
            max = arr[i];
        }
    }
    for(int i=0; i<N; i++)
    {
        arr[i] = arr[i] / max * 100;
    }
    
    double sum = 0;
    for(int i=0; i<N; i++)
    {
        sum += arr[i];
    }
    double avg = sum / N;

    printf("%lf",avg);

    return 0;
}