library verilog;
use verilog.vl_types.all;
entity exercicio02_modified_vlg_sample_tst is
    port(
        data            : in     vl_logic_vector(3 downto 0);
        enter           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end exercicio02_modified_vlg_sample_tst;
