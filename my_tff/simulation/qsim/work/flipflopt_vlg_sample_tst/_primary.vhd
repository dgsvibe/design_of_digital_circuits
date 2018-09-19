library verilog;
use verilog.vl_types.all;
entity flipflopt_vlg_sample_tst is
    port(
        ck              : in     vl_logic;
        clr             : in     vl_logic;
        pr              : in     vl_logic;
        t               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end flipflopt_vlg_sample_tst;
