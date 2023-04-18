#include <stdio.h>
#include <stdbool.h> 

int main ( void ){

int n, div = 2;
int temp;
bool trovato = false;
printf("Inserisci il numero da calcolare: ");
scanf("%d",&n);
if(div < n){
    if(!trovato){
        temp = n % div;
        goto test;
    }
}
test:  if(temp == 0){
        trovato = true;
    }
        else{
            div += 1;
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






