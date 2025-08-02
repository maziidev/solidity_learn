const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

const INITIAL_NUMBER = 42;

module.exports = buildModule("VariablesModule", (m) => {
    const initalNumber = m.getParameter("initalNumber", INITIAL_NUMBER);

    const variables = m.contract("Variables", [initalNumber]);

    return { variables };
});