/*Checked or Unchecked Arithmetic

An overflow or underflow is the situation where the resulting value of an arithmetic operation,
when executed on an unrestricted integer, falls outside the range of the result type.

Note:
    Since solidity v0.8.0 , all arithmetic operations revert on over and underflow by default,
    thus making the use of these libraries unnecessary.
*/

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract C {
    function f(uint a, uint b) pure public returns (uint) {
        // This subtraction will wrap on underflow.
        unchecked { return a - b; }
    }
    function g(uint a, uint b) pure public returns (uint) {
        // This subtraction will revert on underflow.
        return a - b;
    }
}

