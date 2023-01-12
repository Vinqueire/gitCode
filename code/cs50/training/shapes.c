#include <stdio.h>

int main(void)
{
    int i,j;

    for (i = 1; i <= 5; i++)
    {
        for (j = 1; j <=5; j++)
        {
            if (i > 1 && i < 5)
            {
                if (j > 1 && j < 5)
                {
                    printf(" ");
                }
                else
                printf("%d",j); 
            }else printf("%d",j);
            
        }
        printf("\n");
    }
}

// Damn I actually figured that out myself