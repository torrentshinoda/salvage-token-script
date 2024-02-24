require("@nomiclabs/hardhat-waffle");
require("dotenv").config();

module.exports = {
  solidity: "0.8.4",
  networks: {
    ropsten: {
      url: process.env.ROPSTEN_URL,
      hacked_accounts: [`0x${process.env.HACKED_WALLET_PRIVATE_KEY}`],
      salvage_accounts: [`0x${process.env.SALVAGE_WALLET_PRIVATE_KEY}`],
    },
  },
};
