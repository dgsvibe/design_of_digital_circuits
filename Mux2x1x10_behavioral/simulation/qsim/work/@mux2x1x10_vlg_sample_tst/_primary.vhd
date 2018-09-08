library verilog;
use verilog.vl_types.all;
entity Mux2x1x10_vlg_sample_tst is
    port(
        c               : in     vl_logic;
        e0              : in     vl_logic_vector(9 downto 0);
        e1              : in     vl_logic_vector(9 downto 0);
        sampler_tx      : out    vl_logic
    );
end Mux2x1x10_vlg_sample_tst;
