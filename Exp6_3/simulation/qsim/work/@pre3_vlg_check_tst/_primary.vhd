library verilog;
use verilog.vl_types.all;
entity Pre3_vlg_check_tst is
    port(
        LEDG            : in     vl_logic_vector(3 downto 0);
        LEDR            : in     vl_logic_vector(9 downto 0);
        sampler_rx      : in     vl_logic
    );
end Pre3_vlg_check_tst;
