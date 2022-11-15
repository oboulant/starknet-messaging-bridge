// SPDX-License-Identifier: BSD-2-Clause

pragma solidity ^0.8.0;

import "./interfaces/IStarknetCore.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MessageConsumer is Ownable {

    address public starknetContractAddress;

    // This will be called with the output of the command 
    // starknet get_contract_addresses --network alpha-goerli 
    function setstarknetContractAddress(address _address) 
        external 
        onlyOwner 
    {
        starknetContractAddress = _address;
    }


    function consumeMessage(uint256 l2ContractAddress, uint256 l2User)
        external
    {
        // Construct payload like like https://github.com/starknet-edu/starknet-messaging-bridge/blob/main/contracts/Evaluator.cairo#L231
        uint256[] memory payload = new uint256[](1);
        payload[0] = l2User;
        // Message has to match what has been sent
        IStarknetCore(starknetContractAddress).consumeMessageFromL2(
            l2ContractAddress,
            payload
        );
    }
}