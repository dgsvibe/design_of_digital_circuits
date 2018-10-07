library verilog;
use verilog.vl_types.all;
entity mux_2x1 is
    port(
        e0              : in     vl_logic_vector(9 downto 0);
        e1              : in     vl_logic_vector(9 downto 0);
        sel             : in     vl_logic;
        s               : out    vl_logic_vector(9 downto 0)
    );
end mux_2x1;
