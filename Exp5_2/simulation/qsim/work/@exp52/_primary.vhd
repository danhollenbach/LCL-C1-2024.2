library verilog;
use verilog.vl_types.all;
entity Exp52 is
    port(
        s               : out    vl_logic;
        A               : in     vl_logic;
        B               : in     vl_logic;
        CIN             : in     vl_logic;
        cout            : out    vl_logic
    );
end Exp52;
