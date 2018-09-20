library verilog;
use verilog.vl_types.all;
entity exercicio02 is
    port(
        enter           : in     vl_logic;
        data            : in     vl_logic_vector(3 downto 0);
        s               : out    vl_logic_vector(3 downto 0)
    );
end exercicio02;
