#!/bin/bash
#
# Install and Configure Apache Spark and Hadoop
#

wget http://ftp.unicamp.br/pub/apache/hadoop/common/hadoop-2.8.1/hadoop-2.8.1.tar.gz

shasum -a 256 hadoop-2.8.1.tar.gz

tar -xzvf hadoop-2.8.1.tar.gz

sudo mv haroop-2.8.1 /usr/local/hadoop
