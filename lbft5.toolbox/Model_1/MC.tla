---- MODULE MC ----
EXTENDS lbft5, TLC

\* CONSTANT definitions @modelParameterConstants:0validators
const_157302667118013000 == 
{"v1", "v2", "v3", "v4"}
----

\* CONSTANT definitions @modelParameterConstants:2f
const_157302667118014000 == 
1
----

\* CONSTANT definitions @modelParameterConstants:3quorum
const_157302667118015000 == 
{{"v1", "v2", "v3"}, {"v1", "v2","v4"}, {"v1", "v3", "v4"}, {"v2", "v3", "v4"}}
----

\* CONSTANT definitions @modelParameterConstants:4possibleHeights
const_157302667118016000 == 
1..highestHeight
----

\* CONSTANT definitions @modelParameterConstants:5proposers
const_157302667118017000 == 
{"p1"}
----

\* CONSTANT definitions @modelParameterConstants:6sig
const_157302667118018000 == 
[v1 |-> "v1", v2 |-> "v2", v3 |-> "v3", v4 |-> "v4"]
----

\* CONSTANT definitions @modelParameterConstants:7predeterminedBlockHeight
const_157302667118019000 == 
[p1 |-> 1]
----

\* CONSTANT definitions @modelParameterConstants:8validatorTimesHeight
const_157302667118020000 == 
validators \X possibleHeights
----

\* CONSTANT definitions @modelParameterConstants:9highestHeight
const_157302667118021000 == 
1
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_157302667118022000 ==
Spec
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_157302667118023000 ==
uniqueValidation
----
=============================================================================
\* Modification History
\* Created Wed Nov 06 15:51:11 CST 2019 by Dell
