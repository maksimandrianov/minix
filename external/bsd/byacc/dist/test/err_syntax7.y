/*	$NetBSD: err_syntax7.y,v 1.1.1.1 2015/01/03 22:58:23 christos Exp $	*/

%{
int yylex(void);
static void yyerror(const char *);
%}

%token <text> '\777'

%%
S: error
%%

#include <stdio.h>

int
main(void)
{
    printf("yyparse() = %d\n", yyparse());
    return 0;
}

int
yylex(void)
{
    return -1;
}

static void
yyerror(const char* s)
{
    printf("%s\n", s);
}
