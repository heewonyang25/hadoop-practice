# Practice 01 - Word Counting

Apache Hadoop Practice from
https://hadoop.apache.org/docs/stable/hadoop-mapreduce-client/hadoop-mapreduce-client-core/MapReduceTutorial.html

$ bin/hadoop com.sun.tools.javac.Main WordCount.java
$ jar cf wc.jar WordCount*.class

$ bin/hdfs dfs -mkdir /input
$ bin/hdfs dfs -put /input/sample.txt /input
> /input - input directory in HDFS
> /output - output directory in HDFS

$ bin/hadoop fs -cat /user/joe/wordcount/input
> Hello My name is Heewon.

$ bin/hadoop jar wc.jar WordCount /input /output