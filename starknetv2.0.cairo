#[contract]
mod HelloStarknet {
    use starknet::get_caller_address;
    use starknet::ContractAddress;
// added

    #[event]
    fn Hello(from: ContractAddress, value: felt252) {}


    #[external]
    fn Say_Hello(message: felt252) {
        let caller = get_caller_address();
        Hello(caller, message);
    }

}
    #[event]
    fn Hello(from: ContractAddress, value: felt252) {}
// 30.11
