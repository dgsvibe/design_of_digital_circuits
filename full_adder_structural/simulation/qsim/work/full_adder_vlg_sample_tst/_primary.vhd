library verilog;
use verilog.vl_types.all;
entity full_adder_vlg_sample_tst is
    port(
        cin             : in     vl_logic;
        x               : in     vl_logic;
        y               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end full_adder_vlg_sample_tst;