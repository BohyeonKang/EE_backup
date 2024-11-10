#include <stdio.h>

int main()
{
    int input, tmp;
    scanf("%d",&input);

    tmp = input / 4;

    for(int i=0; i<tmp; i++)
    {
        printf("long ");
    }
    printf("int");

    return 0;
}