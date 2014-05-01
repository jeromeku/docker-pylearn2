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
