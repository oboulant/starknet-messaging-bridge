// migrations/2_deploy.js
const MessageConsumer = artifacts.require('MessageConsumer');
const MessageSender = artifacts.require('MessageSender');


module.exports = async function (deployer) {
  await deployer.deploy(MessageConsumer);
  await deployer.deploy(MessageSender);
};
