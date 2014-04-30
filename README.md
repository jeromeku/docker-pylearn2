Pylearn2 in a container
===============

Run Deep Neural Networks (DNN) in a `container`. Using `Docker`, you can run a DNN application on `any OS` (e.g., Ubuntu, Mac OS X, Windows) and popular Clouds (e.g., Amazon EC2, Rackspace Cloud, Google Cloud). 

Setup
-----

### Install Docker
* [Docker](https://www.docker.io/) and its dependencies are required. 


### Start

```
## download this repo
$ git clone https://github.com/lucktroy/docker-pylearn2.git

## cd to this dir
$ cd docker-pylearn2

## build a container with the name 'test/pylearn2'
$ sudo docker build -t test/pylearn2 - < Dockerfile

## run a Pylearn2 example with the above container 'test/pylearn2'
## In detail, it will download a Pylearn2 application to `/tmp` from `https://github.com/lucktroy/regression-deep-learning`. 
## The output is in `/tmp/regression-deep-learning`.
$ sh runTest.sh test/pylearn2
```

### See `runTest.sh`
```
$ cat runTest.sh
```
```sh
#!/bin/sh

if [ $# != 1 ]; then
    echo "USAGE: sh $0 CONTAINER_NAME"
    echo "e.g.: sh $0 test/pylearn2"
    exit 1;g
else
    NAME=$1
fi

# Download a Pylearn2 example from https://github.com/lucktroy/regression-deep-learning
cd /tmp && rm -rf regression-deep-learning && git clone https://github.com/lucktroy/regression-deep-learning.git
cd -

# Run the Pylearn2 example, it will be terminated after 5 epoches.
sudo docker run -v /tmp/regression-deep-learning:/media $NAME sh -c 'cd /media/example-pylearn2 && sh runTest.sh'

```

### Undo
1. GPU is not support. 
2. The above scipts are avaliable on `Ubuntu`. For other OS, you do need start with `sudo`. 