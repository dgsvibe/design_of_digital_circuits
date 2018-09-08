library verilog;
use verilog.vl_types.all;
entity Mux2x1x10 is
    port(
        e0              : in     vl_logic_vector(9 downto 0);
        e1              : in     vl_logic_vector(9 downto 0);
        c               : in     vl_logic;
        s               : out    vl_logic_vector(9 downto 0)
    );
end Mux2x1x10;
