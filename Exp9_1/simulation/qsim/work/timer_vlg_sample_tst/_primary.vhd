library verilog;
use verilog.vl_types.all;
entity timer_vlg_sample_tst is
    port(
        CLOCK_50        : in     vl_logic;
        RESET           : in     vl_logic;
        STOP            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end timer_vlg_sample_tst;
