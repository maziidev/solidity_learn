require("@nomicfoundation/hardhat-toolbox");
require("@nomicfoundation/hardhat-ignition-ethers");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: {
    version: "0.8.28",
    settings: {
      optimizer: {
        enabled: true,
        runs: 1000,
      }
    },

    networks: {
      hardhat: {

      },
      localhost: {
        url: "http://127.0.0.1:8545",
      }
    }
  },
};
