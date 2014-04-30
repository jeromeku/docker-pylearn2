#!/bin/sh

NAME=$1

cd /tmp && rm -rf regression-deep-learning && git clone https://github.com/lucktroy/regression-deep-learning.git
cd -
#sudo docker run -v /tmp/regression-deep-learning:/opt/Test/regression-deep-learning lucktroy/pylearn2 sh /opt/Test/regression-deep-learning/example-pylearn2/runMe.sh

sudo docker run -v /tmp/regression-deep-learning:/media $NAME sh -c 'cd /media/example-pylearn2 && sh runTest.sh'
