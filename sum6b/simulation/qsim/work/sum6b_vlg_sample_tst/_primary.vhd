library verilog;
use verilog.vl_types.all;
entity sum6b_vlg_sample_tst is
    port(
        m               : in     vl_logic_vector(5 downto 0);
        n               : in     vl_logic_vector(5 downto 0);
        sampler_tx      : out    vl_logic
    );
end sum6b_vlg_sample_tst;
