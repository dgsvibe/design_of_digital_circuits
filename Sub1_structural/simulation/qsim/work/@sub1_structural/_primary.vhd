library verilog;
use verilog.vl_types.all;
entity Sub1_structural is
    port(
        E               : in     vl_logic_vector(9 downto 0);
        S               : out    vl_logic_vector(9 downto 0)
    );
end Sub1_structural;
