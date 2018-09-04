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

RESERVADOS : ('if'|'boolean'|'callout'|'class'|'else'|'int'|'return'|'void'|'for'|'break'|'continue');

BOOLEAN : ('true'|'false');

ID : (ALFAB|'_'|'_'NUM*)+;

CHAR :'\'' (ESC|ALFAB|NUM) '\'';

STRING : '"' (ALFAB|NUM|ESPECIAL)+ '"';

WS_ : (' ' | '\n' ) -> skip;

SL_COMMENT : '//' (~'\n')* '\n' -> skip;

INT : (NUM)+;

OP: ('+'|'-'|'/'|'*'|'<'|'<='|'!='|'&&');

fragment
ESC :  '\\' ('n'|'t'|'\\'|'"');

fragment
ALFAB :  ('a'..'z' | 'A'..'Z');

fragment
NUM : ('0'..'9');

fragment
ESPECIAL: (' '|'!'|'"'|'#'|'$'|'%'|'&'|'\\\''|'('|')'|'*'|'+'|','|'-'|'.'|'/'|':'|';'|'<'|'='|'>'|'?'|'@'|
'['|']'|'^'|'_'|'´'|'`'|'{'|'|'|'}'|'~'|'\t'|'\\'|'\"');
