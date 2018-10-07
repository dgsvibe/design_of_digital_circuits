library verilog;
use verilog.vl_types.all;
entity mux_2x1_vlg_check_tst is
    port(
        s               : in     vl_logic_vector(9 downto 0);
        sampler_rx      : in     vl_logic
    );
end mux_2x1_vlg_check_tst;
