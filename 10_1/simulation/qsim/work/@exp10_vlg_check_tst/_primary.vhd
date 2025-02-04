library verilog;
use verilog.vl_types.all;
entity Exp10_vlg_check_tst is
    port(
        GREEN_C         : in     vl_logic;
        GREEN_P         : in     vl_logic;
        RED_C           : in     vl_logic;
        RED_P           : in     vl_logic;
        YELLOW_C        : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Exp10_vlg_check_tst;
