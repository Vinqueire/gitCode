#include <stdio.h>

int main(void)
{
int j,i,q = 1;

for (i = 1; i <=5; i++)
{
    for (j = 1; j <=i; j++)
    {
        printf("%d",q ++);
    }
    printf("\n");
}

}