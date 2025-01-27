library verilog;
use verilog.vl_types.all;
entity timer is
    port(
        HEX0            : out    vl_logic_vector(6 downto 0);
        CLOCK_50        : in     vl_logic;
        STOP            : in     vl_logic;
        RESET           : in     vl_logic;
        HEX1            : out    vl_logic_vector(6 downto 0);
        HEX2            : out    vl_logic_vector(6 downto 0);
        HEX3            : out    vl_logic_vector(6 downto 0);
        test            : out    vl_logic_vector(3 downto 0)
    );
end timer;
