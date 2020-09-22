
module TEST-SYNTAX

    syntax NoBracket ::= r"[^<{}][^{}]*" [token]

endmodule

module TEST
    imports TEST-SYNTAX



    configuration <T> <k> $PGM:Id </k> </T>
endmodule