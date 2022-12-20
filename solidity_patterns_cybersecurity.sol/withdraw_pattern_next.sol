// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

/*
Cybersecurity in Solidity

--> WITHDRAWAL PATTERN  (one of the most important pattern in Solidity)

Withdrawal pattern ensures that direct transfer call in not made which poses a security threat.
Transfers are atomic(meaning all of nothing)

HERE
Instead of using transfer which revert the code, we can use send which returns a bool

Write a function so only the owner can send Tatianna funds with the send method with logic
to set up what happens if the amount is not sent to Tatianna

*/