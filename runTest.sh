#!/bin/sh

NAME=$1

# Download a Pylearn2 example from https://github.com/lucktroy/regression-deep-learning
cd /tmp && rm -rf regression-deep-learning && git clone https://github.com/lucktroy/regression-deep-learning.git
cd -

# Run the Pylearn2 example, it will be terminated after 5 epoches.
sudo docker run -v /tmp/regression-deep-learning:/media $NAME sh -c 'cd /media/example-pylearn2 && sh runTest.sh'
