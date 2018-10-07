library verilog;
use verilog.vl_types.all;
entity demux2x1_vlg_sample_tst is
    port(
        e               : in     vl_logic_vector(9 downto 0);
        sel             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end demux2x1_vlg_sample_tst;
