#include <stdio.h>

int main(void)
{
    int i,j;

    for (i = 1; i <= 5; i++)
    {
        for (j = 1; j <= 5; j++)
        {
            if (j == 1 || i == 5 || j == i)
            {
                printf("%d",j);
            } else
            {
                printf(" ");
            }
        }
        printf("\n");
    }
}


// Damn I actually figured that out myself, empty triangle