library verilog;
use verilog.vl_types.all;
entity Sub1_behavioral_vlg_check_tst is
    port(
        s               : in     vl_logic_vector(9 downto 0);
        sampler_rx      : in     vl_logic
    );
end Sub1_behavioral_vlg_check_tst;
