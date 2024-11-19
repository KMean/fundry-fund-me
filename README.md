
# Foundry Fund Me Project

This repository contains my implementation of the Foundry Fund Me project, based on the course by [Cyfrin Updraft](https://updraft.cyfrin.io/). The project is a decentralized application (dApp) built using Foundry, which allows users to fund a smart contract and withdraw funds. It showcases fundamental concepts of Solidity, Ethereum development, and Foundry.

## Table of Contents
- [Overview](#overview)
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Testing](#testing)
- [Project Structure](#project-structure)
- [Acknowledgments](#acknowledgments)

## Overview
The Fund Me project demonstrates how to:

Write and deploy a smart contract that accepts and manages funds.
Implement withdrawal functionality with ownership constraints.
Test contracts effectively using Foundry.
This project serves as a hands-on practice exercise for developing decentralized applications and understanding core blockchain concepts.

## Features
Funding: Users can send Ether to the contract to fund it.
Withdrawal: The contract owner can withdraw funds securely.
Ownership Management: Only the contract owner can withdraw funds.
Gas Optimization: Implemented best practices for efficient gas usage.


## Prerequisites
Before running this project, ensure you have the following installed:

- [Foundry](https://github.com/foundry-rs/foundry): The Ethereum development framework.
- [Node.js](https://nodejs.org/en): For managing dependencies.
- [Git](https://git-scm.com/): To clone this repository.

# Installation
1. Clone the repository:
```bash
git clone https://github.com/KMean/fundry-fund-me.git
cd fundr-fund-me
```
2. Install dependencies:
```bash
forge install
```
3. Set up environment variables: Create a .env file and provide the necessary variables:
```bash
ALCHEMY_SEPOLIA_RPC_URL=<YOUR_RPC_URL>
```
Instead of using private keys in your .env file use the encrypted private key feature provided by forge:
```bash
cast wallet import your-account-name --interactive
Enter private key:
Enter password:
`your-account-name` keystore was saved successfully. Address: address-corresponding-to-private-key
```



# Usage
Compile the Contract
```bash
forge build
```
Deploy the contract
```bash
forge script script/DeployFundMe.s.sol --rpc-url <RPC_URL> --account <YOUR_ENCRYPTED_ACCOUNT> --broadcast
```

## Interact with the Contract
Use Foundry scripts to interact with the deployed contract:

- Fund the contract:
Call the fund function with the desired amount of Ether.
- Withdraw funds:
Only the owner can call the withdraw function.

## Testing
Run the tests to ensure everything works as expected:

```bash
forge test
```
Tests include:

- Funding the contract.
- Ensuring only the owner can withdraw.
- Verifying accurate balances.

# Acknowledgments
- Special Thanks to [Cyfrin](https://updraft.cyfrin.io/) for creating the Foundry Fund Me course and to [Patrick Collins](https://github.com/patrickalphac) for consistently delivering top-notch Web3 educational content. Your work inspires developers to excel in blockchain development.
- [Foundry](https://github.com/foundry-rs) for providing a robust blazing fast Ethereum development framework.
- The [Ethereum](https://ethereum.org/) and [Solidity](https://soliditylang.org/) communities for excellent resources and support.