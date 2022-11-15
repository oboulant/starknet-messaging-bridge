# starknet-messaging-bridge

Solutions to https://github.com/starknet-edu/starknet-messaging-bridge 

## Exercice 1

Deployed contract has Contract Address [`0x06ab617462d29454e08ddb6f5ea7539ca3c8d4a7eb73cada52b8636a6ab5fdfb`](https://testnet.starkscan.co/contract/0x06ab617462d29454e08ddb6f5ea7539ca3c8d4a7eb73cada52b8636a6ab5fdfb#overview)

Transaction on L2 submitting the contract to the L2 Evaluator : [`0x5764275833688631770b261798cb205281c98ec16beb6266bfa5bcbdb08b69f`](https://testnet.starkscan.co/tx/0x5764275833688631770b261798cb205281c98ec16beb6266bfa5bcbdb08b69f)

Transaction on L2 calling function `ex1a` from the L2 Evaluator : [`0x6ca560f093d1dba281775b1c10c93f7187b8d48e60ceb9a822638d9df82d563`](https://testnet.starkscan.co/tx/0x6ca560f093d1dba281775b1c10c93f7187b8d48e60ceb9a822638d9df82d563)

Transaction on L1 calling function `createNftFromL2` from the L1 MessagingNft : [`0x23bce2c6822d7c510dd13595447a522438919f07ec8faf91eccc836d4611c0ad`](https://goerli.etherscan.io/tx/0x23bce2c6822d7c510dd13595447a522438919f07ec8faf91eccc836d4611c0ad)

## Exercice 2

Address of the deployed L1 contract : [`0x203dca849d9262d5c7bdd489d3eb6d864fc446a7`](https://goerli.etherscan.io/address/0x203dca849d9262d5c7bdd489d3eb6d864fc446a7)

Transaction on L1 setting the StarknetCore contract address : [`0x9b979c746687b90ff917021740db1567d753f53e9f6c842a27f75d72ed1848c7`](https://goerli.etherscan.io/tx/0x9b979c746687b90ff917021740db1567d753f53e9f6c842a27f75d72ed1848c7)

Transaction on L1 setting the L2 Evaluator contract address : [`0x8d8fe91d3d102ed37296a71e4bbb2980d3f9f263d947b3ec45d72ba045911dea`](https://goerli.etherscan.io/tx/0x8d8fe91d3d102ed37296a71e4bbb2980d3f9f263d947b3ec45d72ba045911dea)

Transaction on L1 setting the proper selector : [`0x6f5b856dec69b67a866dccec2b421a7cf17d5a17cff2b3c92c59c0acb36a4c74`](https://goerli.etherscan.io/tx/0x6f5b856dec69b67a866dccec2b421a7cf17d5a17cff2b3c92c59c0acb36a4c74)

Transaction triggerring the message sending on L1 : [`0xe926dce5cf196e969278f82e4e9e195d8b5e33eaf23e6cb62e349f89952df22d`](https://goerli.etherscan.io/tx/0xe926dce5cf196e969278f82e4e9e195d8b5e33eaf23e6cb62e349f89952df22d)

We can see the message arriving on L2 : [here](https://testnet.starkscan.co/eth-tx/0xe926dce5cf196e969278f82e4e9e195d8b5e33eaf23e6cb62e349f89952df22d#messagelogs)

## Exercice 3

Address of the deployed L1 contract : [`0x0fC32327fD13d43B4C5f97cE1c897Ef03680b894`](https://goerli.etherscan.io/address/0x0fC32327fD13d43B4C5f97cE1c897Ef03680b894)

Transaction on L1 setting the StarknetCore contract address : [`0x016c3e12b7646611c22fa60a037ca918300ab7ec1d274c246220d5afaae3301f`](https://goerli.etherscan.io/tx/0x016c3e12b7646611c22fa60a037ca918300ab7ec1d274c246220d5afaae3301f)

Transaction on L2 calling function `ex3_a` from the L2 Evaluator : [`0x1de611e2be01e90160699ff1c0561e11c971cb8d3163634ed2be864a6f92fa2`](https://testnet.starkscan.co/tx/0x1de611e2be01e90160699ff1c0561e11c971cb8d3163634ed2be864a6f92fa2)

Transaction on L1 calling `ex3` from the L1 Evaluator : [`0x2f6f3fd498927d1309ee57440ac448b12ddad44680b8468c39946d39f398d9c2`](https://goerli.etherscan.io/tx/0x2f6f3fd498927d1309ee57440ac448b12ddad44680b8468c39946d39f398d9c2)

We can see the message received on L2 : 

* [here](https://testnet.starkscan.co/message/0xd40fe8f2fa5f4a9f12fdc7676ee7195e1bd000ade6d504cf95dd0b63112f223c)
* [here](https://testnet.starkscan.co/eth-tx/0x2f6f3fd498927d1309ee57440ac448b12ddad44680b8468c39946d39f398d9c2#messagelogs)


## Exercice 4

Deployed contract has Contract Address [`0x07cc79a6bfc7ee84dc0837874a428dde9334d023c08d92b93527ac34fc52ff5c`](https://testnet.starkscan.co/contract/0x07cc79a6bfc7ee84dc0837874a428dde9334d023c08d92b93527ac34fc52ff5c#overview)

Transaction on L1 calling `ex4` from the L1 Evaluator : [`0x55e6fc995f3208917dac3ed0c1a98b353c76a896faa4afddc5a01ef083d91b86`](https://goerli.etherscan.io/tx/0x55e6fc995f3208917dac3ed0c1a98b353c76a896faa4afddc5a01ef083d91b86)

Transaction on L2 submitting our deployed contract to function `submit_exercice` from the L2 Evaluator : [`0x618162ff355ffc6d0b41e764ed225ce46feaece9f4afb83cf171308a5289475`](https://testnet.starkscan.co/tx/0x618162ff355ffc6d0b41e764ed225ce46feaece9f4afb83cf171308a5289475)

Transaction on L2 calling function `ex4_b` from the L2 Evaluator : [`0x408cb796e01a90f3d1080c76a9901f1f74b4e12136617d5b42e6284b5e0e603`](https://testnet.starkscan.co/tx/0x408cb796e01a90f3d1080c76a9901f1f74b4e12136617d5b42e6284b5e0e603)

