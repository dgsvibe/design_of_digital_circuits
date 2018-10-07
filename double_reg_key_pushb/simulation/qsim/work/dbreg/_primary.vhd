library verilog;
use verilog.vl_types.all;
entity dbreg is
    port(
        s9              : out    vl_logic;
        sel_mux         : in     vl_logic;
        rst             : in     vl_logic;
        push_button     : in     vl_logic;
        key             : in     vl_logic;
        data9           : in     vl_logic;
        data8           : in     vl_logic;
        data7           : in     vl_logic;
        data6           : in     vl_logic;
        data5           : in     vl_logic;
        data4           : in     vl_logic;
        data3           : in     vl_logic;
        data2           : in     vl_logic;
        data1           : in     vl_logic;
        data0           : in     vl_logic;
        s8              : out    vl_logic;
        s7              : out    vl_logic;
        s6              : out    vl_logic;
        s5              : out    vl_logic;
        s4              : out    vl_logic;
        s3              : out    vl_logic;
        s2              : out    vl_logic;
        s1              : out    vl_logic;
        s0              : out    vl_logic
    );
end dbreg;
