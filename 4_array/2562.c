#include <stdio.h>

int main()
{
    int arr[9] = {0,};
    for(int i=0; i<9; i++)
    {
        scanf("%d",&arr[i]);
    }
    
    int max = arr[0];
    int idx = 0;
    for(int i=0; i<9; i++)
    {
        if(arr[i]>max)
        {
            max = arr[i];
            idx = i;
        }
    }

    printf("%d\n",max);
    printf("%d\n",idx+1);

    return 0;
}