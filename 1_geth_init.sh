nohup geth --datadir miner init genesis.json > logs/miner_init.log &
nohup geth --datadir node_1 init genesis.json > logs/node_1_init.log &
nohup geth --datadir node_2 init genesis.json > logs/node_2_init.log &