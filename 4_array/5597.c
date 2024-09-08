#include <stdio.h>

int main()
{
    int arr[30];
    for(int i=0; i<30; i++)
    {
        arr[i] = i+1;
    }

    int tmp, test;
    for(int i=0; i<28; i++)
    {
        scanf("%d",&tmp);
        for(int j=0; j<30; j++)
        {
            if(arr[j]==tmp)
            {
                arr[j]=0;
            }
        }
    }

    for(int i=0; i<30; i++)
    {
        if(arr[i]!=0)
        {
            printf("%d\n",arr[i]);
        }
    }

    return 0;
}