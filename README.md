# Reader
A website that pays user for reading
## **Website that Pays Users for Reading Modules - README**

### **Vision**

Our platform is designed to create a new era in online learning by incentivizing users to complete educational modules with cryptocurrency rewards. Using blockchain technology, we aim to build an ecosystem where both learning and earning go hand-in-hand. The platform provides transparency, security, and seamless transactions, all powered by the Aptos blockchain. Our vision is to redefine how learning is valued, ensuring that users are compensated directly for their engagement and knowledge acquisition.

---

### **Features**

- **Module-Based Learning with Rewards**: Users can earn Aptos tokens (APT) by completing educational modules, directly rewarding them for their learning efforts.

- **Blockchain-Powered Payments**: Payments are securely processed through the Aptos blockchain, ensuring fast, transparent, and tamper-proof transactions.

- **Smart Contract Integration**: The platform leverages smart contracts to automatically transfer Aptos tokens to users upon module completion.

- **Wallet Connection**: Users can easily connect their Aptos wallets to the platform, making it simple to receive rewards.

- **Seamless User Experience**: After completing a module, users are instantly paid, providing an easy and smooth experience from learning to earning.

---

### **Smart Contract Information**

The platform uses a Move-based smart contract deployed on the Aptos blockchain. The smart contract facilitates the transfer of Aptos tokens from the platform’s (or deployer’s) wallet to the user's wallet when they complete a module.

#### **Smart Contract Code**:

```move
module aptos_transfer::Transfer {
    use aptos_framework::coin;
    use aptos_framework::aptos_coin::AptosCoin;

    /// Transfers `amount` of Aptos tokens to the recipient's address
    public entry fun send_tokens(sender: &signer, recipient: address, amount: u64) {
        // Perform the transfer from the sender to the recipient
        coin::transfer<AptosCoin>(sender, recipient, amount);
    }
}
```

- **send_tokens**: This function is responsible for transferring Aptos tokens from the sender (the platform’s wallet) to the recipient (the user’s wallet).
  - **Parameters**:
    - `sender`: The address of the deployer or sender’s wallet.
    - `recipient`: The wallet address of the user receiving the tokens.
    - `amount`: The number of Aptos tokens to be transferred.

---

### **Future Scopes**

- **Expanded Token Support**: In addition to Aptos tokens, the platform may support multiple cryptocurrencies for payouts.

- **Content Creation Ecosystem**: Allow educators to create their own modules and receive Aptos tokens as payment, expanding the platform's offerings.

- **DeFi Integration**: Provide users with the ability to stake or lend their earned Aptos tokens, integrating decentralized finance (DeFi) features.

- **Mobile App Development**: Launch a mobile app to increase accessibility and enhance user experience.

- **Gamification**: Introduce badges, leaderboards, and additional incentives to encourage active participation and learning on the platform.

---

This README outlines the basic vision, features, and smart contract functionality of the platform, along with potential future developments to enhance user engagement and platform scalability.
