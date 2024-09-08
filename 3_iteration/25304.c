#include <stdio.h>

int main()
{
    int X, N, price, num, sum;
    scanf("%d",&X);
    scanf("%d",&N);
    
    sum = 0;
    for(int i=0; i<N; i++)
    {
        scanf("%d %d",&price,&num);
        sum += price * num;
    }
    if(sum == X)
        printf("Yes\n");
    else
        printf("No\n");
    return 0;
}