#include <stdio.h>
#include <ctype.h>

int main() {
    char str[100];
    int i;

    printf("Enter expression: ");
    scanf("%s", str);

    for(i = 0; str[i] != '\0'; i++) {
        if(isalpha(str[i]))
            printf("%c is Identifier\n", str[i]);
        else if(isdigit(str[i]))
            printf("%c is Constant\n", str[i]);
        else if(str[i]=='+' || str[i]=='-' || str[i]=='*' || str[i]=='/' || str[i]=='=')
            printf("%c is Operator\n", str[i]);
    }

    return 0;
}
