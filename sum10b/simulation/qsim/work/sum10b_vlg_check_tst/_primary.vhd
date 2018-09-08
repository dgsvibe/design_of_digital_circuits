library verilog;
use verilog.vl_types.all;
entity sum10b_vlg_check_tst is
    port(
        s               : in     vl_logic_vector(10 downto 0);
        sampler_rx      : in     vl_logic
    );
end sum10b_vlg_check_tst;
