lexer grammar DecafLexer;

@header {
package decaf;
}

options
{
  language=Java;
}

tokens
{
TK_class
}

IF:'if';
CALLOUT:'callout';
TRUEFLASE : ('true'|'false');
CLASS:'class';
ELSE:'else';
RETURN:'return';
VOID:'void';
FOR:'for';
BREAK:'break';
CONTINUE:'continue';
PROGRAM:'Program';
BOOLEAN:'boolean';
INT: 'int';


LCURLY : '{';
RCURLY : '}';

MAIS:'+';
MENOS:'-';
VEZES:'*';
DIVID:'/';
MENOR:'<';
MENORIGUAL:'<=';
MAIOR:'>';
MAIORIGUAL:'>=';
DIFERENTE:'!=';
IGUALIGUAL:'==';
IGUAL: '=';
E:'&&';
OU:'||';
LCOLC:'[';
RCOLC:']';
LPAREN:'(';
RPAREN:')';
VIRGULA : ',';
DOISPONTOS: ':';
PONTVIRGULA : ';';


ID : (ALFAB+NUM*|'_'|'_'NUM*)+;

CHAR :'\'' (ESC|ALFAB|NUM) '\'';

STRING : '"' (ALFAB|NUM|ESPECIAL)+ '"';


WS_ : (' ' | '\n' | '\t') -> skip;

SL_COMMENT : '//' (~'\n')* '\n' -> skip;

NUMERO : (NUM)+;

HEX : INIHEX (NUM|ALFAB)+;


fragment
ESC :  '\\' ('n'|'t'|'\\'|'"');

fragment
ALFAB :  ('a'..'z' | 'A'..'Z');

fragment
NUM : ('0'..'9');

fragment
ESPECIAL: (' '|'!'|'"'|'#'|'$'|'%'|'&'|'\\\''|'('|')'|'*'|'+'|','|'-'|'.'|'/'|':'|';'|'<'|'='|'>'|'?'|'@'|'['|']'|'^'|'_'
|'´'|'`'|'{'|'|'|'}'|'~'|'\t'|'\\'|'\"');

fragment
INIHEX: '0x';
