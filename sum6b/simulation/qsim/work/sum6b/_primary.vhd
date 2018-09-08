library verilog;
use verilog.vl_types.all;
entity sum6b is
    port(
        m               : in     vl_logic_vector(5 downto 0);
        n               : in     vl_logic_vector(5 downto 0);
        s               : out    vl_logic_vector(6 downto 0)
    );
end sum6b;
