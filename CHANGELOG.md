# TLA+ for LBFT 2.0 Changelog

## LBFT5

The followings are improved from the previous version:


## LBFT4

The followings are improved from the previous version:


## LBFT3

The followings are improved from the previous version:

* Introduce several new variants like ``blockCache``.
* Introduce ``validatorChain`` and ``proposerChain`` for verify the correctness.
* Original ``fsm`` procedure is replaced with ``addSig`` procedure.
* A process is implemented to simulate the FSM, which can be executed nondeterministically among four validators.
* A process is implemented to simulate the proposer broadcasting its new block.

## LBFT2

The followings are improved from the previous version:

* The ``fsm`` function is written in ``procedure`` instead of ``macro``.
* A ``broadcast`` procedure is introduced to invoke ``fsm``, although the invocations are done in order maunally. 

## LBFT1

It is the basic implementation of LBFT 2.0, in which we set 

* 4 validators.
* 5 states (two impeachment states will not be reached).
* Arrays storing signatures of each validator.
* The ``fsm`` function is written in ``macro``, and all state transition is implemented by ``either`` statement.
* ``fsm`` function is invoked in order manually.
