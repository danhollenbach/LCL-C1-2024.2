library verilog;
use verilog.vl_types.all;
entity Pre3 is
    port(
        LEDG            : out    vl_logic_vector(3 downto 0);
        SW              : in     vl_logic_vector(9 downto 0);
        LEDR            : out    vl_logic_vector(9 downto 0)
    );
end Pre3;
