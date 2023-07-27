// We require the Hardhat Runtime Environment explicitly here. This is optional
// but useful for running the script in a standalone fashion through `node <script>`.
//
// You can also run a script with `npx hardhat run <script>`. If you do that, Hardhat
// will compile your contracts, add the Hardhat Runtime Environment's members to the
// global scope, and execute the script.
const hre = require("hardhat");

async function main() {
  const initBalance = 1;
  const Assessment = await hre.ethers.getContractFactory("SmartContract_with_Front_end_interaction");
  const assessment = await Assessment.deploy(initBalance);
  await assessment.deployed();

  assessment.DisplayAddress();

  console.log(`A contract with balance of ${initBalance} eth deployed to ${assessment.address}`);

  assessment.on("showAddress", (owner) => {
    console.log(`msg.sender is : ${owner}`);
  })

  assessment.on("deposite", (deposit_val, Balance) => {
    console.log(`New deposit: ${deposit_val} new Balance is : ${Balance} ETH`);
  })

  assessment.on("withdraw", (withdraw_val, Balance) => {
    console.log(`New withdraw: ${withdraw_val} new Balance is : ${Balance} ETH`);
  })

  // Redeem function
  assessment.on("redeem", (amount) => {
    console.log(`Redeemed amount: ${amount} ETH`);
  });

  // Call the "redeem" function
  await assessment.Redeem();
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
