library verilog;
use verilog.vl_types.all;
entity pnot is
    port(
        a               : in     vl_logic;
        s               : out    vl_logic
    );
end pnot;
