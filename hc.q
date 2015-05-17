// hypercalc definition

\d .hc

define:{[t;d;g]calcs[t;o!d o;o!(not[d~'d],g)o@:where(o:order refs each@[d;key g;(;);get g])in key d]}
calcs:{calc/[x;key y;get y;get z]}
calc:{[t;k;f;g]$[0~r:.[!;(t;();$[g~0b;g;g!g];enlist[k]!enlist f);0];![t;();0b;enlist[k]!enlist(#;count t;(::))];r]}
flatten:distinct raze over
ref:{$[-11=t:type x;x;t;();.z.s each x]}
refs:flatten ref@
order:{flatten[reverse(flatten x@)scan key x]inter key x}

