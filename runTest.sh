#!/bin/sh

cd /tmp && git clone https://github.com/lucktroy/regression-deep-learning.git
cd -
sudo docker run -v /tmp/regression-deep-learning:/opt/Test/regression-deep-learning lucktroy/pylearn2 sh /opt/Test/regression-deep-learning/example-pylearn2/runMe.sh
