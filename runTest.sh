#!/bin/sh

cd /tmp && git clone https://github.com/lucktroy/regression-deep-learning.git
cd -
sudo docker build -t test/pylearn2 - < dockerfile.pylearn2_test
