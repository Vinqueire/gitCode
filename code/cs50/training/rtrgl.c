#include <stdio.h>

int main(void)
{
    int i,j,k,q;

    for (i = 1; i <=5; i++)
    {
        for (k = 5; k >= i; k--)
        {
            printf(" ");
        }
            for (j = 1; j <= i; j++)
            {
                printf("%d",j);
            }
                for (q = 1; q <= 2; q++)
                {
                    printf(" ");
                }
                
                    for (j = 1; j <= i; j++)
                    {
                        printf("%d",j);
                    }
                        printf("\n");
    }
}