Miner="0x59b801bcc4a67491aa317ed8a7241a69eeb65942"
Node_1="0xFfbC083f0Ff7A4f148B6f4475EF6eB671274006d"
Node_2="0x714B8ce3BdD704edAa4B746EDaD2Aa563efFac2d"

nohup bootnode -nodekey boot.key > logs/bootnode.log &

Bootnode="enode://f1b6b897adb023531db3a5b37be7c8237333f6ad18f4e682e96595e44e1c68ba882d1538c6f2ae3410ba5a0c0ba1572c1c339ab3cd17d814e916d9f1f7f3343d@127.0.0.1:0?discport=30301"

Arguments="--syncmode full --ipcdisable --verbosity 4 --rpc --rpcaddr localhost --rpcapi admin,debug,eth,miner,net,personal,shh,txpool,web3 --networkid 1771 --gasprice 1 --mine --miner.etherbase $Miner --bootnodes $Bootnode"

nohup geth --datadir miner --rpcport 8100 --port 30303 --allow-insecure-unlock --unlock '0x59b801bcc4a67491aa317ed8a7241a69eeb65942' --password 'node1/password.txt' --identity Miner $Arguments > logs/Miner.log &

nohup geth --datadir node2 --rpcport 8101 --port 30304 --identity Node_1 $Arguments > logs/Node_1.log &

nohup geth --datadir node3 --rpcport 8102 --port 30305 --identity Noode_2 $Arguments > logs/Node_2.log &