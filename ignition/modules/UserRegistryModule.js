const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");


module.exports = buildModule("UserRegistryModule", (m) => {
    const userRegistry = m.contract("UserRegistry");

    return { userRegistry };
});