%lang starknet


from starkware.cairo.common.cairo_builtins import HashBuiltin
from starkware.cairo.common.alloc import alloc
from starkware.starknet.common.messages import send_message_to_l1


const l1_evaluator_address = 0x8055d587A447AE186d1589F7AAaF90CaCCc30179;

///////////////////////////////
// Declaring storage vars
// Storage vars are by default not visible through the ABI. 
// They are similar to "private" variables in Solidity
///////////////////////////////

@storage_var
func l1_assigned_var_storage() -> (assigned_var : felt){
}


///////////////////////////////
// Declaring getters
// Public variables should be declared explicitly with a getter
///////////////////////////////

@view
func l1_assigned_var{syscall_ptr : felt*, pedersen_ptr : HashBuiltin*, range_check_ptr}() -> (assigned_var : felt){
    let (assigned_var) = l1_assigned_var_storage.read();
    return (assigned_var,);
}

///////////////////////////////
// handlers, special kind of decorators
///////////////////////////////
@l1_handler
func consume_l1_message{syscall_ptr : felt*, pedersen_ptr : HashBuiltin*, range_check_ptr}(
    from_address : felt, rand_value : felt
){
    // Check L1 sender
    with_attr error_message("Message was not sent by the official L1 contract"){
        assert from_address = l1_evaluator_address;
    }
    // Record value in storage
    l1_assigned_var_storage.write(rand_value);
    return ();
}