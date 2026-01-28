// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract DonationContract {

    // struktur data donasi
    struct Donation {
        address donor;
        uint256 amount;
    }

    // array menyimpan semua donasi
    Donation[] private donations;

    // event (nilai plus buat dosen)
    event DonationReceived(address indexed donor, uint256 amount);

    // fungsi untuk menerima donasi ETH
    function donate() external payable {
        require(msg.value > 0, "Donation must be greater than 0");

        donations.push(Donation({
            donor: msg.sender,
            amount: msg.value
        }));

        emit DonationReceived(msg.sender, msg.value);
    }

    // ambil semua data donasi
    function getDonations() external view returns (Donation[] memory) {
        return donations;
    }

    // jumlah total donasi
    function getDonationCount() external view returns (uint256) {
        return donations.length;
    }
}
