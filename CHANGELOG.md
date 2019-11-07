# TLA+ for LBFT 2.0 Changelog

## LBFT5.tla

The followings are improved from the previous version:

* Multiple variants are now defined as CONSTANTS.
* Several ASSUME statements are also applied to constrain these CONSTANTS.
* ``Quorum`` is introduced as CONSTANTS.
* The implementation of certificates are changed to use ``Quorum``s. 


## LBFT4.tla

The followings are improved from the previous version:

* Change the validator simulators from ``process`` to ``fair+ process``.
* Change the index of ``blockReceiver`` from ``validators`` to ``validators \X possibleHeight``.
	* It is for furture versions where multiple proposers are applied.

## LBFT3.tla

The followings are improved from the previous version:

* Introduce several new variants like ``blockCache``.
* Introduce ``validatorChain`` and ``proposerChain`` for verify the correctness.
* Original ``fsm`` procedure is replaced with ``addSig`` procedure.
* A process is implemented to simulate the FSM, which can be executed non-deterministically among four validators.
* A process is implemented to simulate the proposer broadcasting its new block.

## LBFT2.tla

The followings are improved from the previous version:

* The ``fsm`` function is written in ``procedure`` instead of ``macro``.
* A ``broadcast`` procedure is introduced to invoke ``fsm``, although the invocations are done in order maunally. 

## LBFT.tla

It is the basic implementation of LBFT 2.0, in which we set 

* 4 validators.
* 1 proposer.
* 5 states (two impeachment states will not be reached).
* Arrays storing signatures of each validator.
* The ``fsm`` function is written in ``macro``, and all state transition is implemented by ``either`` statement.
* ``fsm`` function is invoked in order manually.
