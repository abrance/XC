nohup geth --rpc  --rpccorsdomain "*" --datadir "./" --port 30304 --rpcapi "db,eth,net,web3,personal" --ws --wsaddr "0.0.0.0" --wsapi "web3,eth,db,net,personal" --wsorigins "*" --networkid 8888 --rpcport 8545 --rpcaddr "0.0.0.0" --allow-insecure-unlock  >geth.log 2>&1 &
