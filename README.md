# Interact with Your Smart Contract through Front-end Practice Code

## Description
The files `index.js`, `MySmartContract.sol`, and `deploy.js` contain codes to practice interaction with the `SmartContract_with_Front_end_interaction` smart contract through a website.

## NOTE:
`deploy.js` file contains the code of frontend.

## Environment Setting for Executing the above files
Follow the steps below:

1. Clone this repository or download the zip file and then extract it.

2. Above repository contains all necessary files to interact with our smart contract called `SmartContract_with_Front_end_interaction.sol`.

3. Copy `index.js` contents from this repository to the `index.js` file in the `pages` folder.

4. Copy `deploy.js` contents from this repository to the `deploy.js` file in the `scripts` folder.

5. Install MetaMask Browser Extension.

## Starter Next/Hardhat Project

After cloning GitHub, you will want to do the following to get the code running on your computer.

1. Inside the project directory, in the terminal type: `npm i`

2. Open two additional terminals in your VS code.

3. In the second terminal, type: `npx hardhat node`

4. In the third terminal, type: `npx hardhat run --network localhost scripts/deploy.js`
   (Note: You can also verify the address of deployment in the `contractAddress` variable in `index.js` file)

5. Back in the first terminal, type `npm run dev` to launch the frontend.

After this, the project will be running on your local host, typically at `http://localhost:3000/`.

## Setting up the local host network and a dummy account in your Metamask Wallet

To interact with the smart contract locally, we need to set up a local network with the MetaMask wallet.

1. Click on the MetaMask extension and then click on the top middle button, which is the network selection button.

2. Click on "Add a Network."

3. Click on "Add a Network Manually."

4. Give the Network name (whatever you want).

5. Set the New RPC URL to `http://127.0.0.1:8545/`.

6. Set the Chain ID to `31337`.

7. Set the Currency symbol to `ETH`.

8. Now, set the MetaMask wallet network to the newly created local network.

To set up an account, you have to import an account with the account's private key, which you can find in the second terminal where we executed the command `npx hardhat node`. After hitting enter, you can see there are many account numbers with private keys written in the terminal. Just take any account's corresponding private key to import it to your Metamask Wallet.

Head to `http://localhost:3000/` to start interacting with the Metamask Wallet.

You can also see all transaction details in the deploy terminal.

## License
This project is licensed under the MIT License. See the LICENSE file for details.
