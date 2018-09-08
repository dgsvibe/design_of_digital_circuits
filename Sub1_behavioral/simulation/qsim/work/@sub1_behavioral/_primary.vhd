library verilog;
use verilog.vl_types.all;
entity Sub1_behavioral is
    port(
        e               : in     vl_logic_vector(9 downto 0);
        s               : out    vl_logic_vector(9 downto 0)
    );
end Sub1_behavioral;
