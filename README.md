# FTSCS-2023

## Developers
Raúl López-Rueda | rloprue@upv.es
Julia Sapiña | jsapina@upv.es
Santiago Escobar | sescobar@upv.es

Universitat Politècnica de València
Camino de Vera s/n, 46022, Valencia, Spain

## Introduction
This repository includes the files needed to use the SMT canonical narrowing folding. This algorithm allows to perform symbolic reachability analysis, supporting rewrite theories with SMT constraints specified in conditional rules. In addition, it allows the use of irreducibility constraints and the folding technique.

## Dependencies
To be able to replicate all the examples or execute the textual interface it is necessary to use the Maude System. For the implementations and runs of the examples found in this repository, Maude version 3.3.1 has been used. The link to download this version of Maude is as follows: 
https://github.com/SRI-CSL/Maude/releases/tag/Maude3.3.1

## Using the textual interface for narrowing
To start the narrowing text interface

1. Run Maude
2. Move to the repository where the files were downloaded
3. Run the following command: ```load narrowing-ui.maude```
   
Once this is done, the PTA-COFFEE and PTA-VENDING-COFFEE modules are automatically loaded. You can use the desired commands with the following syntax:
```
{ canonical, fold } vu-narrow { filter, delay } [ n,m ] in 
MODNAME : <Term1> <SearchArrow> <Term2> .

{ canonical, fold } vu-narrow { filter, delay } [ n,m ] in 
MODNAME : <Term1> <SearchArrow> <Term2> such that 
<IrreducibilityConstraint> irreducible .

{ canonical, fold } vu-narrow { filter, delay } [ n,m ] in 
MODNAME : <Term1> <SearchArrow> <Term2> such that 
<SMTConstraint> .

{ canonical, fold } vu-narrow { filter, delay } [ n,m ] in 
MODNAME : <Term1> <SearchArrow> <Term2> such that 
<IrreducibilityConstraint> irreducible and <SMTConstraint> .
```
An example of use is as follows:
```
{ fold } vu-narrow in PTA-VENDING-COFFEE : 
  [ idle : X1:Real ; X2:Real ] < P1:Real ; P2:Real ; P3:Real > < M:Money ; C:CNat > 
  =>* 
  < done : X1':Real ; X2':Real > < P1:Real ; P2:Real ; P3:Real > < $ $ M':Money ; 1 + 1 + 1 + C:CNat > 
      such that X1:Real === X2:Real and X1:Real >= 0/1 and 
      P1:Real >= 0/1 and P2:Real >= 0/1 and P3:Real >= 0/1 .
```

## Meta-level executions
This repository also contains the versions of the algorithms that return metalevel outputs. To run the example batteries, go to ```meta-narrowing/pta-coffee``` and run the files ```run-tests-pta-coffee.sh``` and ```run-tests-pta-vending-coffee.sh```. Note that within these files the maude executable path is specified, which must be changed according to the path where each user has saved it.
