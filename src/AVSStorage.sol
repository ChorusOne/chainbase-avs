pragma solidity ^0.8.12;

import {IAVS} from "./interface/IAVS.sol";

abstract contract AVSStorage {
    /// @notice addresses of register operators
    address[] internal _operators;

    /// @notice operators wheather or not to register
    mapping(address => bool) internal _allowlist;

    ///@notice supported strategy list(eg.stETH/cbETH....)
    IAVS.StrategyParam[] internal _strategyparams;

    /// @notice max number of operators that can be register

    uint32 public maxOperatorCount;

    /// @notice min stake required for an operator to register
    uint96 public minOperatorStake;
}
