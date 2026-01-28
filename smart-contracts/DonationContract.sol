// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract DonationContract {
    struct Donation {
        address donor;
        uint256 amount;
    }

    
    Donation[] private donations;
    event DonationReceived(address indexed donor, uint256 amount);

   
    function donate() external payable {
        require(msg.value > 0, "Donation must be greater than 0");

        donations.push(Donation({
            donor: msg.sender,
            amount: msg.value
        }));

        emit DonationReceived(msg.sender, msg.value);
    }

   
    function getDonations() external view returns (Donation[] memory) {
        return donations;
    }

    
    function getDonationCount() external view returns (uint256) {
        return donations.length;
    }
}
