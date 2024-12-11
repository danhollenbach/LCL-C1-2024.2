library verilog;
use verilog.vl_types.all;
entity Exp51 is
    port(
        SUM             : out    vl_logic;
        A               : in     vl_logic;
        B               : in     vl_logic;
        CARRY           : in     vl_logic;
        COUT            : out    vl_logic
    );
end Exp51;
