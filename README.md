# MyToken Solidity Contract

This Solidity contract, named "MyToken," implements a basic cryptocurrency token with minting and burning functionality. It follows the provided requirements and provides a simple template for creating your own custom Ethereum-based tokens.

## Description

This Solidity contract is designed to create and manage a custom cryptocurrency token. It includes the following features:

1. **Token Information**: Public variables store details about the token, including its name (`tknName`), abbreviation (`tknAbbrv`), and total supply (`totalSupply`).

2. **Balances Mapping**: A mapping of Ethereum addresses to token balances (`balances`) allows users to track their token holdings.

3. **Mint Function**: The `mint` function allows for the creation of new tokens. It takes two parameters: an address and a value. The function increases the total supply by the specified value and increases the balance of the designated address by the same amount.

4. **Burn Function**: The `burn` function enables the destruction of tokens. Like the mint function, it also takes an address and a value as parameters. However, this function decreases the total supply and deducts the specified value from the balance of the caller (sender).

5. **Safety Checks**: The burn function includes conditionals to ensure that the balance of the caller is greater than or equal to the amount they intend to burn. This prevents unauthorized token destruction.

## Getting Started

### Prerequisites

Before deploying and interacting with this contract, make sure you have the following:

1. An Ethereum wallet (e.g., MetaMask) with some test Ether for gas fees on a development network (e.g., Rinkeby, Ropsten).

2. Access to a Solidity development environment (e.g., Remix, Truffle, Hardhat).

### Deploying the Contract

1. Copy the entire contents of the `MyToken.sol` contract provided in this repository.

2. Open your preferred Solidity development environment.

3. Create a new Solidity file (e.g., `MyToken.sol`) and paste the copied code into it.

4. Compile the contract using the Solidity compiler (ensure you select the compatible version, e.g., `0.8.18`).

5. Deploy the contract to your chosen Ethereum development network.

### Interacting with the Contract

Once the contract is deployed, you can interact with it using your Ethereum wallet or a smart contract interface.

- Use the `mint` function to create new tokens by specifying the recipient's address and the amount to mint.
- Use the `burn` function to destroy tokens, ensuring you have a sufficient balance.

## Authors

[Sarah](https://github.com/sarahannie/)

## License

This project is licensed under the MIT License. For details, see the [LICENSE](LICENSE) file.
