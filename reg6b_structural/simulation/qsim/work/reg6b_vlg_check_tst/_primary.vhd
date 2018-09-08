library verilog;
use verilog.vl_types.all;
entity reg6b_vlg_check_tst is
    port(
        q               : in     vl_logic_vector(5 downto 0);
        sampler_rx      : in     vl_logic
    );
end reg6b_vlg_check_tst;
