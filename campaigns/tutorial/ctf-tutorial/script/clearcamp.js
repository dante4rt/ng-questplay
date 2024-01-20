const { ethers } = require("hardhat");

// Input bandit camp address here
const BANDIT_CAMP_ADDRESS = "0x00Bc1d19b45cAFb63E97E7e381fBd48347212Fc2"

async function main() {
  const camp = await ethers.getContractAt(
    "BanditCamp", BANDIT_CAMP_ADDRESS);

  await camp.clearCamp();
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});