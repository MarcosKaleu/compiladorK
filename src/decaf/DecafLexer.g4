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

LCURLY : '{';
RCURLY : '}';


WS_ : (' ' | '\n' ) -> skip;

SL_COMMENT : '//' (~'\n')* '\n' -> skip;

ID : (ALFAB|'_')(ALFAB|NUM|'_')+;

CHAR :'\'' (ESC|ALFAB|NUM) '\'';

STRING : '"' (ALFAB|NUM|ESPECIAL)+ '"';

fragment
ESC :  '\\' ('n'|'t'|'\\'|'"');

fragment
ALFAB :  ('a'..'z' | 'A'..'Z');

fragment
NUM : ('0'..'9');

fragment
ESPECIAL: (' '|'!'|'"'|'#'|'$'|'%'|'&'|'\\\''|'('|')'|'*'|'+'|','|'-'|'.'|'/'|':'|';'|'<'|'='|'>'|'?'|'@'|
'['|']'|'^'|'_'|'´'|'`'|'{'|'|'|'}'|'~'|'\t'|'\\'|'\"');
