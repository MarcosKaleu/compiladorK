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

ID  :
  ('a'..'z' | 'A'..'Z')+;


WS_ : (' ' | '\n' ) -> skip;

SL_COMMENT : '//' (~'\n')* '\n' -> skip;

CHAR :'\'' (ID2|ESC) '\'';
STRING : '"' (ID|ESC)* '"';

fragment
ESC :  '\\' ('n'|'t'|'\\'|'"');

ID2 :  ('a'..'z' | 'A'..'Z'| '0'..'9');



