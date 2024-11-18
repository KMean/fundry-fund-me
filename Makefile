-include .env

deploy-sepolia:; forge script script/DeployFundMeContract.s.sol:DeployFundMeContract --fork-url $(ALCHEMY_SEPOLIA_RPC_URL) --account dev --broadcast --verify --etherscan-api-key $(ETHERSCAN_API_KEY) -vvvv