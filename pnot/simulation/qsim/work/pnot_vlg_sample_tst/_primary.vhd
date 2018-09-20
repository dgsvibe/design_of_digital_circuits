library verilog;
use verilog.vl_types.all;
entity pnot_vlg_sample_tst is
    port(
        a               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end pnot_vlg_sample_tst;
