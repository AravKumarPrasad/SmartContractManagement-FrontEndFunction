// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.7;

contract SmartContract_with_Front_end_interaction {

    address payable public WalletAddress;
    uint256 public Balance;

    event showAddress(address walAdress);
    event deposite(uint256 deposit_val,uint256 balance);
    event withdraw(uint256 withdraw_val,uint256 balance);
    event redeem(uint256 amount); // Add the redeem event

    constructor(uint256 initval) {
        Balance = initval;
        WalletAddress = payable(msg.sender);
    }

    function getBalance() public view returns(uint256){
        return Balance;
    }

    function DisplayAddress() public payable {
        emit showAddress(WalletAddress);
    }

    function Deposite(uint256 deopsite_val) public payable {
        Balance += deopsite_val;
        emit deposite(deopsite_val, Balance);
    }

    error insuficient_balance(uint256 balance, uint withdrawAmount);

    function Withdraw(uint256 withdraw_val) public payable {
        if(Balance < withdraw_val){
            revert insuficient_balance({
                balance : Balance,
                withdrawAmount : withdraw_val
            });
        }
        Balance -= withdraw_val;
        emit withdraw(withdraw_val, Balance);
    }

    function Redeem() public {
        if (Balance == 0) {
            revert insuficient_balance(0, 0); // Redeem is not allowed when the balance is zero
        } else {
            uint256 redeemAmount = Balance;
            Balance = 0;
            emit redeem(redeemAmount);
        }
    }
}
