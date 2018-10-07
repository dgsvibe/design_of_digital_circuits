library verilog;
use verilog.vl_types.all;
entity m1x2 is
    port(
        input           : in     vl_logic_vector(9 downto 0);
        output_0        : out    vl_logic_vector(9 downto 0);
        output_1        : out    vl_logic_vector(9 downto 0);
        sel             : in     vl_logic
    );
end m1x2;
