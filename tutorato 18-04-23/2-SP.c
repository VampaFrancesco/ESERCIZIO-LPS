#include <stdio.h>
#include <stdbool.h> 

int main ( void ){

    int n;
    int div = 2;
    bool trovato = false;
    printf("Inserisci il numero da calcolare: ");
    scanf("%d",&n);
    while ((div < n) && !trovato){
        if((n % div) == 0){
          trovato = true;
        }
        else{
            div++;
        }
    }
    printf("Il numero %d ", n);
    if (trovato){
        printf("non è primo. E' divisibile per %d.\n", div);
    }
    else{
        printf("e' primo .\n");
    }


    return 0;
}
