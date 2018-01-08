Docker EthereumPool.co mining
=============================

# Introduction

DockerFile for EthereumPool.co mining (https://ethereumpool.co/)

This image is based on `ubuntu:16.04`.

# Quick start

```bash
$ docker container run --rm -d  --name miner \
	-v miner_ethash:/root/.ethash \
	-e HASH_RATE=0.1 \
	-e ETH_ADDRESS=0x88c6b20032f48d219a5136db6366500cab33c17a \
	-e PROCESSOR=CPU \
	-e RIG_NAME=workername andrespp/ethereumpool
```

# Logs

```bash
$ docker container logs -f miner
```

# MHash Value

To find out your hardware's proper MHash value, run the following command and divide the result by 1000000:

```bash
$ docker container run --rm -e PROCESSOR=CPU andrespp/ethereumpool test
```

# Environment variables

This image uses several environment variables in order to control its behavior, and some of them may be required

| Environment variable | Default value | Note |
| -------------------- | ------------- | -----|
| HASH\_RATE | 0.01 | Hashrate in Mhash. Defaul is the minimum of 0.01 Mhash IN MHASH |
| ETH\_ADDRESS | 0x88c6b20032f48d219a5136db6366500cab33c17a | Your Ethereum Wallet address. Default is my own wallet, change it for yours! |
| RIG\_NAME | localhost | Optional rig name |
| PROCESSOR | CPU | Select between CPU or GPU for mining |

# Issues

If you have any problems with or questions about this image, please contact me
through a [GitHub issue](https://github.com/andrespp/docker-jaspersrv/issues).

# Donate

Bitcoin: 1MsVSVUytbDanB4csWWuExoAjWn6X1dVx2

Ethereum: 0x88c6b20032f48d219a5136db6366500cab33c17a
