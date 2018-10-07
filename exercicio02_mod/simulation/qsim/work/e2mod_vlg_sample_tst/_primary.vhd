library verilog;
use verilog.vl_types.all;
entity e2mod_vlg_sample_tst is
    port(
        data            : in     vl_logic_vector(9 downto 0);
        enter           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end e2mod_vlg_sample_tst;
