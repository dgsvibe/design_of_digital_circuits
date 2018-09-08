library verilog;
use verilog.vl_types.all;
entity reg10b is
    port(
        rst             : in     vl_logic;
        ck              : in     vl_logic;
        d               : in     vl_logic_vector(9 downto 0);
        q               : out    vl_logic_vector(9 downto 0)
    );
end reg10b;
