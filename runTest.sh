#!/bin/sh

cd /tmp && git clone https://github.com/lucktroy/regression-deep-learning.git
cd -
sudo docker run -v /tmp/regression-deep-learning:/media lucktroy/pylearn2 sh /media/example-pylearn2/runMe.sh
