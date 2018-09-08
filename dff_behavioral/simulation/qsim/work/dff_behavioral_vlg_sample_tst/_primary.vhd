library verilog;
use verilog.vl_types.all;
entity dff_behavioral_vlg_sample_tst is
    port(
        ck              : in     vl_logic;
        d               : in     vl_logic;
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end dff_behavioral_vlg_sample_tst;
