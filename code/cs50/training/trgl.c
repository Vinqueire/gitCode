#include <stdio.h>

int main(void)
{
    int i,j;

    for (i = 1; i <= 5; i++)
    {
        for (j = 1; j <=i; j++)
        {
            if (i == 1 || i == 2 || i ==5)
            {
                printf("%d",j);
            }
            
            if (i == 3)
            {
                if (j == 2)
                {
                    printf(" ");
                }
                else 
                {
                    printf("%d",j);
                }
            }        
            
            if (i == 4)
            {
                if (j == 2 || j == 3)
                {
                    printf(" ");
                } 
                else
                {
                    printf("%d",j);
                }
            }

        }
        printf("\n");
    }
}

// Damn I actually figured that out myself, empty triangle