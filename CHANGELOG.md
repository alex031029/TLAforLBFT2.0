# TLA+ for LBFT 2.0 Changelog

## LBFT5

## LBFT4

## LBFT3

## LBFT2

## LBFT1

It is the basic implementation of LBFT 2.0, in which we set 
* 4 validators.
* 5 states (two impeachment states will not be reached).
* Arrays storing signatures of each validator.
* The ``fsm`` function is written in ``macro``, and all state transition is implemented by ``either`` statement.
* ``fsm`` function is invoked in order manually.
