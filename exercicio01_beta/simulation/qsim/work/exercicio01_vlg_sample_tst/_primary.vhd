library verilog;
use verilog.vl_types.all;
entity exercicio01_vlg_sample_tst is
    port(
        data0           : in     vl_logic;
        data1           : in     vl_logic;
        data2           : in     vl_logic;
        data3           : in     vl_logic;
        data4           : in     vl_logic;
        data5           : in     vl_logic;
        data6           : in     vl_logic;
        data7           : in     vl_logic;
        data8           : in     vl_logic;
        data9           : in     vl_logic;
        key             : in     vl_logic;
        push_button     : in     vl_logic;
        rst             : in     vl_logic;
        \signal\        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end exercicio01_vlg_sample_tst;
