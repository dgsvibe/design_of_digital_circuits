library verilog;
use verilog.vl_types.all;
entity demux2x1_vlg_check_tst is
    port(
        s0              : in     vl_logic_vector(9 downto 0);
        s1              : in     vl_logic_vector(9 downto 0);
        sampler_rx      : in     vl_logic
    );
end demux2x1_vlg_check_tst;
