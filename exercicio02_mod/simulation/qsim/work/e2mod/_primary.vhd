library verilog;
use verilog.vl_types.all;
entity e2mod is
    port(
        enter           : in     vl_logic;
        data            : in     vl_logic_vector(9 downto 0);
        s               : out    vl_logic_vector(9 downto 0)
    );
end e2mod;
