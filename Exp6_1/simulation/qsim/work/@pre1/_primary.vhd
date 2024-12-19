library verilog;
use verilog.vl_types.all;
entity Pre1 is
    port(
        A               : out    vl_logic;
        E               : in     vl_logic_vector(9 downto 0);
        B               : out    vl_logic;
        C               : out    vl_logic;
        D               : out    vl_logic
    );
end Pre1;
