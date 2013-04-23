#!/bin/sh
#java源代码的编译
cd java
javac Random.java
java Random

#DBTHBP的编译执行
cd ../sim_scene
./build.sh

#DBTHBP的数据分析
cd ../data_analysis/sh
./build.sh
./gnuplot.sh
