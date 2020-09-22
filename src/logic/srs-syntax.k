require "domains.k"

module SRS-SYNTAX
    imports DOMAINS-COMMON

syntax LogicName ::= "srs"

syntax LogicFormula ::= SRSFormula

syntax SRSFormula ::= RuleList

syntax LogicState ::= SRSState

syntax SRSState ::= "succeed" | "fail"

syntax Rule ::= SRSLeftHandSide "->" SRSRightHandSide

syntax SRSLeftHandSide ::= OptionalBegin SRSString OptionalEnd
syntax SRSRightHandSide ::= SRSString | "#" SRSState | "#epsilon"

syntax OptionalBegin ::= "^"   [klabel('OpBeginSome)]
                        | None [klabel('OpBeginNone)]
syntax OptionalEnd ::= "$"     [klabel('OpEndSome)]
                        | None [klabel('OpEndNone)]
syntax None

syntax SRSString ::= Id | Id SRSString

syntax RuleList ::= List{Rule, "."}  [klabel('RuleList)]

syntax EventName ::= Id

endmodule

