module aptos_transfer::Transfer {
    use aptos_framework::coin;
    use aptos_framework::aptos_coin::AptosCoin;

    /// Transfers `amount` of Aptos tokens to the recipient's address
    public entry fun send_tokens(sender: &signer, recipient: address, amount: u64) {
        // Perform the transfer from the sender to the recipient
        coin::transfer<AptosCoin>(sender, recipient, amount);
    }
}
