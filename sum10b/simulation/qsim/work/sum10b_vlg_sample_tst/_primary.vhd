library verilog;
use verilog.vl_types.all;
entity sum10b_vlg_sample_tst is
    port(
        m               : in     vl_logic_vector(9 downto 0);
        n               : in     vl_logic_vector(9 downto 0);
        sampler_tx      : out    vl_logic
    );
end sum10b_vlg_sample_tst;
