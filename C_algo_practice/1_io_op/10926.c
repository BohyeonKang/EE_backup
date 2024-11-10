#include <stdio.h>

int main()
{
    char buf[100], name[100];
    scanf("%s",&name);
    snprintf(buf,100,"%s%s",name,"??!");
    printf("%s\n",buf);
    return 0;
}