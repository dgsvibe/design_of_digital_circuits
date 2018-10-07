library verilog;
use verilog.vl_types.all;
entity demux2x1 is
    port(
        e               : in     vl_logic_vector(9 downto 0);
        sel             : in     vl_logic;
        s0              : out    vl_logic_vector(9 downto 0);
        s1              : out    vl_logic_vector(9 downto 0)
    );
end demux2x1;
