library verilog;
use verilog.vl_types.all;
entity dff_behavioral is
    port(
        rst             : in     vl_logic;
        ck              : in     vl_logic;
        d               : in     vl_logic;
        q               : out    vl_logic
    );
end dff_behavioral;
