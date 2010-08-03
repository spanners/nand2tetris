load DMux.hdl;
output-file DMux.out;
compare-to DMux.cmp;
output-list sel i a b;
set sel 0, set i 0, eval, output;
set sel 0, set i 1, eval, output;
set sel 1, set i 0, eval, output;
set sel 1, set i 1, eval, output;
