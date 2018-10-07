library verilog;
use verilog.vl_types.all;
entity mux_2x1_vlg_sample_tst is
    port(
        e0              : in     vl_logic_vector(9 downto 0);
        e1              : in     vl_logic_vector(9 downto 0);
        sel             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end mux_2x1_vlg_sample_tst;
