// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

contract Temple {
    uint128 public entrance;
    address public mainHall;
    mapping(uint8 => mapping(uint8 => address)) public gardens;
    bytes20[] public chambers;

    /// Write data to the contract's ith storage slot
    function write(uint256 i, bytes32 data) public {
        assembly {
            sstore(i, data)
        }
    }

    function setMainHall() public {
        bytes32 data = bytes32(uint256(uint160(address(0xe960d7b6CE284E4E763b69D98e808643fCC13B42))) << 96);

        write(1, data);
    }
}
