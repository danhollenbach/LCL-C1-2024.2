library verilog;
use verilog.vl_types.all;
entity Exp51_vlg_sample_tst is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        CARRY           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Exp51_vlg_sample_tst;
