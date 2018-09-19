parser grammar DecafParser;

@header {
package decaf;
}

options
{
  language=Java;
  tokenVocab=DecafLexer;
}

program: CLASS PROGRAM LCURLY [(declaracao)* (metod_decl)*] RCURLY;

declaracao: {tipo variavel | tipo variavel LCOLC inteiro RCOLC}+VIRGULA PONTVIRGULA;

metod_decl: {tipo | VOID} variavel LPAREN | {tipo variavel}+VIRGULA| RPAREN block;

block: LCURLY (var)* (statement)* RCURLY

statement: local assinatura_op expr PONTVIRGULA | metod_call PONTVIRGULA | IF LPAREN expr RPAREN block [ELSE block] |FOR variavel IGUAL expr VIRGULA expr block | RETURN [expr] PONTVIRGULA | BREAK PONTVIRGULA | CONTINUE PONTVIRGULA | block;

var: (tipo variavel)+VIRGULA PONTVIRGULA;

tipo: INT|BOOLEAN;

variavel: ALFAB| (ALFAB NUM)*;

