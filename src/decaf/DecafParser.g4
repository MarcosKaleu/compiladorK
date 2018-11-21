parser grammar DecafParser;

@header {
package decaf;
}

options
{
  language=Java;
  tokenVocab=DecafLexer;
}

program: CLASS PROGRAM LCURLY field_decl* method_decl* RCURLY;

tipo_method: type ID;

field_decl: (tipo_method (VIRGULA tipo_method)* | tipo_method LCOLC int_literal RCOLC (VIRGULA tipo_method LCOLC int_literal RCOLC)*) PONTVIRGULA;


assinatura_method: tipo_method (VIRGULA tipo_method)*;

retorno_method: type|VOID ID;

method_decl: (type | VOID) ID LPAREN (tipo_method(VIRGULA tipo_method)*)? RPAREN block;

block: LCURLY (var)* (statement)* RCURLY;

type: INT|BOOLEAN;

statement: location assign_op expr PONTVIRGULA | method_call PONTVIRGULA | IF LPAREN expr RPAREN block (ELSE block)? |FOR ID IGUAL expr VIRGULA expr block | RETURN expr PONTVIRGULA | BREAK PONTVIRGULA | CONTINUE PONTVIRGULA | block;

assign_op: IGUAL|MAISIGUAL|MENOSIGUAL;

method_call: ID LPAREN (expr(VIRGULA expr)*)? RPAREN | CALLOUT LPAREN string_literal  (VIRGULA callout_arg(VIRGULA callout_arg)*)? RPAREN;



location: ID | ID LCOLC expr RCOLC;

expr: location | method_call | literal | expr bin_op expr | MENOS expr | EXCLAMACAO expr | LPAREN expr RPAREN;

callout_arg: expr | string_literal;

bin_op: arith_op | rel_op | eq_op | cond_op;

arith_op: MAIS | MENOS | VEZES | PERCENT | DIVID;

rel_op: MENOR | MAIOR | MENORIGUAL | MAIORIGUAL;

eq_op: IGUALIGUAL | DIFERENTE;

cond_op: E | OU;

literal: int_literal | char_literal | bool_literal;



alpha_num: alpha | digit;

alpha: LETRAS;

digit: NUMERO;

hex_literal: HEX;

bool_literal: TRUEFLASE;

char_literal: CHAR;

string_literal: STRING;

int_literal: decimal_literal | hex_literal;

decimal_literal: digit digit*;

var: type ID(VIRGULA ID)* PONTVIRGULA;
