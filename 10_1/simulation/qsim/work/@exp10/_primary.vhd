library verilog;
use verilog.vl_types.all;
entity Exp10 is
    port(
        GREEN_C         : out    vl_logic;
        SW              : in     vl_logic_vector(1 downto 0);
        CLOCK           : in     vl_logic;
        RED_C           : out    vl_logic;
        YELLOW_C        : out    vl_logic;
        GREEN_P         : out    vl_logic;
        RED_P           : out    vl_logic
    );
end Exp10;
