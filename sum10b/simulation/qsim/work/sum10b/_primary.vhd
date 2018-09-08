library verilog;
use verilog.vl_types.all;
entity sum10b is
    port(
        m               : in     vl_logic_vector(9 downto 0);
        n               : in     vl_logic_vector(9 downto 0);
        s               : out    vl_logic_vector(10 downto 0)
    );
end sum10b;
