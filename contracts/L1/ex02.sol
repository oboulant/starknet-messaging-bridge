// SPDX-License-Identifier: BSD-2-Clause

pragma solidity ^0.8.0; 

import "./interfaces/IStarknetCore.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MessageSender is Ownable {

    address public starknetContractAddress;
    uint256 public Ex2Selector;
    uint256 public EvaluatorContractAddress;

    // This will be called with the output of the command 
    // starknet get_contract_addresses --network alpha-goerli 
    function setStarknetContractAddress(address _address) 
        external 
        onlyOwner 
    {
        starknetContractAddress = _address;
    }

    // This will be called with the output of the command 
    // python scripts/get_selector.py
    // Another way would be to retrieve the information (this is deterministic) with 
    // https://util.turbofish.co/ and entering the string 'ex2' and copying the corresponding 
    // selector (ie. 897827374043036985111827446442422621836496526085876968148369565281492581228)
    function setEx2Selector(uint256 _selector) 
        external 
        onlyOwner 
    {
        Ex2Selector = _selector;
    }

    function setEvaluatorContractAddress(uint256 _evaluatorContractAddress)
        external
        onlyOwner
    {
        EvaluatorContractAddress = _evaluatorContractAddress;
    }

    function mintNftOnL2(uint256 l2_user) 
        public 
    {
        // Construct payload like https://github.com/starknet-edu/starknet-messaging-bridge/blob/main/contracts/L1/MessagingNft.sol
        uint256[] memory payload = new uint256[](1);
        payload[0] = l2_user;
        // We send the message from L1 to L2 using the L1 StarknetCore Contract
        // The sendMessageToL2() of this L1 StarknetCore Contract then does the job for us
        IStarknetCore(starknetContractAddress).sendMessageToL2(
            EvaluatorContractAddress,
            Ex2Selector,
            payload
        );
    }
}