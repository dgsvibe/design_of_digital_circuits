library verilog;
use verilog.vl_types.all;
entity reg10bhlb_vlg_sample_tst is
    port(
        ck              : in     vl_logic;
        e               : in     vl_logic_vector(9 downto 0);
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end reg10bhlb_vlg_sample_tst;
