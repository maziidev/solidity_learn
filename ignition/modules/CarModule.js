const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

module.exports = buildModule("CarModule", (m) => {
    const newCar = m.contract("Car", ["Ford", "Mustang", 2024]);

    return { newCar };
});


