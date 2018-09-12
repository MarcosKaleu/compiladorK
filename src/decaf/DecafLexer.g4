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
CLASS:'class';
ELSE:'else';
RETURN:'return';
VOID:'void';
FOR:'for';
BREAK:'break';
CONTINUE:'continue';
PROGRAM:'Program';

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


BOOLEAN : ('true'|'false');

ID : (ALFAB|'_'|'_'NUM*)+;

CHAR :'\'' (ESC|ALFAB|NUM) '\'';

STRING : '"' (ALFAB|NUM|ESPECIAL)+ '"';

WS_ : (' ' | '\n' | '\t') -> skip;

SL_COMMENT : '//' (~'\n')* '\n' -> skip;

INT : (NUM)+;

HEX : INIHEX (NUM|ALFAB)+;

fragment
ESC :  '\\' ('n'|'t'|'\\'|'"');

fragment
ALFAB :  ('a'..'z' | 'A'..'Z');

fragment
NUM : ('0'..'9');

fragment
ESPECIAL: (' '|'!'|'"'|'#'|'$'|'%'|'&'|'\\\''|'('|')'|'*'|'+'|','|'-'|'.'|'/'|':'|';'|'<'|'='|'>'|'?'|'@'|
'['|']'|'^'|'_'|'´'|'`'|'{'|'|'|'}'|'~'|'\t'|'\\'|'\"');

fragment
INIHEX: '0x';
