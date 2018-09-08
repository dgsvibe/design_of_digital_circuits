library verilog;
use verilog.vl_types.all;
entity Mux2x1x10_vlg_check_tst is
    port(
        s               : in     vl_logic_vector(9 downto 0);
        sampler_rx      : in     vl_logic
    );
end Mux2x1x10_vlg_check_tst;
