#!/usr/bin/env bash

echo "apple lemon apple lemon lemon grape" > input.txt
sudo -u hdfs hadoop fs -mkdir -p /user/hdfs/input
sudo -u hdfs hadoop fs -put input.txt /user/hdfs/input
sudo -u hdfs hadoop jar /usr/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar wordcount /user/hdfs/input/input.txt /user/hdfs/output
sudo -u hdfs hadoop fs -cat /user/hdfs/output/part-r-00000