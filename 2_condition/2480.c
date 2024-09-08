#include <stdio.h>

int main()
{
    int a, b, c, reward;
    scanf("%d %d %d",&a,&b,&c);
    
    //세 개 모두 같은 눈이 나오는 경우
    if(a==b & b==c)
    {
        reward = 10000 + (a * 1000);
    }
    //그렇지 않은 경우
    else
    {
        if(a==b)
            reward = 1000 + (a * 100);
        else if(b==c)
            reward = 1000 + (b * 100);
        else if(a==c)
            reward = 1000 + (a * 100);
        else
        {
            reward = a * 100;
            if(a<b)
            {
                reward = b * 100;
                if(b<c)
                    reward = c * 100;
            }
            else
            {
                if(a<c)
                    reward = c * 100;
            }
        }
    }
    printf("%d",reward);
}