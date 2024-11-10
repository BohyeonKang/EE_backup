#include <stdio.h>

int main()
{
    int num;
    int arr[10];
    for(int i=0; i<10; i++)
    {
        arr[i] = -1;
    }

    for(int i=0; i<10; i++)
    {
        int test = 1;
        scanf("%d",&num);

        int tmp = num % 42;

        for(int j=0; j<10; j++)
        {
            if(arr[j]==tmp)
            {
                test = 0;
            }
        }
        if(test)
        {
            arr[i] = tmp;
        }
    }

    int cnt = 0;
    for(int i=0; i<10; i++)
    {
        if(arr[i]>=0)
        {
            cnt++;
        }
    }

    printf("%d",cnt);

    return 0;
}