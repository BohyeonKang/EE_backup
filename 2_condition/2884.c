#include <stdio.h>

int main()
{
    int h1,m1,h2,m2;
    scanf("%d %d",&h1,&m1);
    
    if(m1>=45)
    {
        h2 = h1;
        m2 = m1 - 45;
    }
    else
    {
        m2 = m1 + 15;
        if(h1==0) h2 = 23;
        else h2 = h1 - 1;
    }

    printf("%d %d",h2,m2);

    return 0;
}