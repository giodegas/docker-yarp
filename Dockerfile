FROM tutum/ubuntu:14.04

MAINTAINER Giovanni De Gasperis <giovanni@giodegas.it>

RUN sh -c 'echo "deb http://www.icub.org/ubuntu trusty contrib/science" > /etc/apt/sources.list.d/icub.list'
RUN apt-get update
RUN apt-get install -y --force-yes yarp

RUN yarp check
