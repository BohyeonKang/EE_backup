#include <stdio.h>

int main()
{
    int h1, m1, time_required;
    int q, r;
    int h2, m2;

    scanf("%d %d",&h1,&m1);
    scanf("%d",&time_required);

    q = time_required / 60;
    r = time_required % 60;
    
    if(m1+r>=60)
    {
        h2 = h1 + q + 1;
        if(h2>=24) h2 = h2 - 24;
        m2 = m1 + r - 60;
    }
    else
    {
        h2 = h1 + q;
        if(h2>=24) h2 = h2 - 24;
        m2 = m1 + r;
    }

    printf("%d %d",h2,m2);

    return 0;
}