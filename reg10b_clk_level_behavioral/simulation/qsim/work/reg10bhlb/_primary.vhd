library verilog;
use verilog.vl_types.all;
entity reg10bhlb is
    port(
        rst             : in     vl_logic;
        ck              : in     vl_logic;
        e               : in     vl_logic_vector(9 downto 0);
        s               : out    vl_logic_vector(9 downto 0)
    );
end reg10bhlb;
