%lang starknet

from starkware.cairo.common.cairo_builtins import HashBuiltin
from starkware.cairo.common.alloc import alloc
from starkware.starknet.common.messages import send_message_to_l1

const l1_contract_address = 0x6DD77805FD35c91EF6b2624Ba538Ed920b8d0b4E;

// l1_user is the account with which we connect with Metamask (for instance) when 
// we call createNftFromL2 on L1. l1_user is also passed as argument to ex1a (the caller
// is not our personal L2 address, it is the https://github.com/starknet-edu/starknet-messaging-bridge/blob/main/contracts/Evaluator.cairo
// deployed on 0x595bfeb84a5f95de3471fc66929710e92c12cce2b652cd91a6fef4c5c09cd99)
@external
func create_l1_nft_message{syscall_ptr: felt*, pedersen_ptr: HashBuiltin*, range_check_ptr}(
    l1_user : felt
) {
    // Construct payload
    let (message_payload: felt*) = alloc();
    assert message_payload[0] = l1_user;

    // Send message
    send_message_to_l1(to_address=l1_contract_address, payload_size=1, payload=message_payload);

    return ();
}