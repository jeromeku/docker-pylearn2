# Pylearn2
#
# VERSION       0.1

# use the ubuntu base image provided by dotCloud
FROM ubuntu
MAINTAINER Junbo Zhang, zjb2046@gmail.com
# make sure the package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update

# install Theano's dependencies
RUN apt-get install python-numpy python-scipy python-dev python-pip python-nose g++ libopenblas-dev git

RUN cd /opt && git clone git://github.com/Theano/Theano.git

RUN cd /opt/Theano && python setup.py develop

