# docker-solidity-flattener

A docker wrapper for [BlockCatIO's solidity-flattener] (https://github.com/BlockCatIO/solidity-flattener), so you don't have to install any dependencies in your local machine to flatten solidity code!

## Getting Started

Clone this repo, and build the docker image with 2 parameters:
 - 1 SOURCE -> The folder where your solidity code is install
 - 2 CONTRACT -> The contract that you want to flatten. IMPORTANT: the contract should be in the root folder and the dependencies should be inside that folder, check the example 

```
git clone https://github.com/santiarias/docker-solidity-flattener
cd docker-solidity-flattener
docker build -t solidity-flattener --build-arg SOURCE=crowdsale --build-arg CONTRACT=Crowdsale.sol .
docker run solidity-flattener
```

## License

This project is licensed under the MIT License

## Acknowledgments

* Thank you to the BlockCatIO team for the python flattener