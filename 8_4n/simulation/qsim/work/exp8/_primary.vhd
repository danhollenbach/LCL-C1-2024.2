library verilog;
use verilog.vl_types.all;
entity exp8 is
    port(
        COUNT           : out    vl_logic_vector(2 downto 0);
        RESET           : in     vl_logic;
        CLOCK           : in     vl_logic
    );
end exp8;
