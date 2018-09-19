library verilog;
use verilog.vl_types.all;
entity flipflopt is
    port(
        t               : in     vl_logic;
        ck              : in     vl_logic;
        q               : out    vl_logic;
        pr              : in     vl_logic;
        clr             : in     vl_logic
    );
end flipflopt;
