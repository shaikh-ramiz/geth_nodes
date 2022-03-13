nohup geth --datadir miner init genesis.json > logs/node1_init.log &
nohup geth --datadir node2 init genesis.json > logs/node2_init.log &
nohup geth --datadir node3 init genesis.json > logs/node3_init.log &