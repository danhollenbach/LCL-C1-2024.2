library verilog;
use verilog.vl_types.all;
entity Exp10_vlg_sample_tst is
    port(
        CLOCK           : in     vl_logic;
        SW              : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end Exp10_vlg_sample_tst;
