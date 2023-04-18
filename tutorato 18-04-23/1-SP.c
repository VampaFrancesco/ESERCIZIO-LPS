#include <stdio.h>
#include <stdbool.h>
#include<stdlib.h>


int main ( void ){

    int n, div = 2;
    bool trovato = false;

    printf("Inserisci il numero da trovare:.\n ");
    scanf("%d", &n);

    while(div < n && !trovato){

        if((n % div) == 0){
            
            printf("%d è divisore.\n ", div);
        }
        else{
            printf("%d non e' divisore.\n ",div);
    
        }
        div++;

    }

system("PAUSE");
return 0;
}