#!/bin/bash

set -o pipefail -e
export PRELAUNCH_OUT="/Users/yangheewon/hadoop-3.3.1/logs/userlogs/application_1666524110537_0005/container_1666524110537_0005_01_000001/prelaunch.out"
exec >"${PRELAUNCH_OUT}"
export PRELAUNCH_ERR="/Users/yangheewon/hadoop-3.3.1/logs/userlogs/application_1666524110537_0005/container_1666524110537_0005_01_000001/prelaunch.err"
exec 2>"${PRELAUNCH_ERR}"
echo "Setting up env variables"
export JAVA_HOME=${JAVA_HOME:-"/Library/Java/JavaVirtualMachines/jdk-11.0.6.jdk/Contents/Home"}
export HADOOP_COMMON_HOME=${HADOOP_COMMON_HOME:-"/Users/yangheewon/hadoop-3.3.1"}
export HADOOP_HDFS_HOME=${HADOOP_HDFS_HOME:-"/Users/yangheewon/hadoop-3.3.1"}
export HADOOP_CONF_DIR=${HADOOP_CONF_DIR:-"/Users/yangheewon/hadoop-3.3.1/etc/hadoop"}
export HADOOP_YARN_HOME=${HADOOP_YARN_HOME:-"/Users/yangheewon/hadoop-3.3.1"}
export HADOOP_HOME=${HADOOP_HOME:-"/Users/yangheewon/hadoop-3.3.1"}
export PATH=${PATH:-"/usr/bin:/bin:/usr/sbin:/sbin"}
export LANG=${LANG:-"ko_KR.UTF-8"}
export HADOOP_TOKEN_FILE_LOCATION="/tmp/hadoop-yangheewon/nm-local-dir/usercache/yangheewon/appcache/application_1666524110537_0005/container_1666524110537_0005_01_000001/container_tokens"
export CONTAINER_ID="container_1666524110537_0005_01_000001"
export NM_PORT="55990"
export NM_HOST="localhost"
export NM_HTTP_PORT="8042"
export LOCAL_DIRS="/tmp/hadoop-yangheewon/nm-local-dir/usercache/yangheewon/appcache/application_1666524110537_0005"
export LOCAL_USER_DIRS="/tmp/hadoop-yangheewon/nm-local-dir/usercache/yangheewon/"
export LOG_DIRS="/Users/yangheewon/hadoop-3.3.1/logs/userlogs/application_1666524110537_0005/container_1666524110537_0005_01_000001"
export USER="yangheewon"
export LOGNAME="yangheewon"
export HOME="/home/"
export PWD="/tmp/hadoop-yangheewon/nm-local-dir/usercache/yangheewon/appcache/application_1666524110537_0005/container_1666524110537_0005_01_000001"
export LOCALIZATION_COUNTERS="238250,0,4,0,231"
export JVM_PID="$$"
export NM_AUX_SERVICE_mapreduce_shuffle="AAA0+gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA="
export APPLICATION_WEB_PROXY_BASE="/proxy/application_1666524110537_0005"
export SHELL="/bin/bash"
export HADOOP_MAPRED_HOME="${HADOOP_HOME}"
export CLASSPATH="$PWD:$HADOOP_CONF_DIR:$HADOOP_COMMON_HOME/share/hadoop/common/*:$HADOOP_COMMON_HOME/share/hadoop/common/lib/*:$HADOOP_HDFS_HOME/share/hadoop/hdfs/*:$HADOOP_HDFS_HOME/share/hadoop/hdfs/lib/*:$HADOOP_YARN_HOME/share/hadoop/yarn/*:$HADOOP_YARN_HOME/share/hadoop/yarn/lib/*:$HADOOP_MAPRED_HOME/share/hadoop/mapreduce/*:$HADOOP_MAPRED_HOME/share/hadoop/mapreduce/lib/*:job.jar/*:job.jar/classes/:job.jar/lib/*:$PWD/*"
export APP_SUBMIT_TIME_ENV="1666524802376"
export LD_LIBRARY_PATH="$PWD:$HADOOP_COMMON_HOME/lib/native"
export MALLOC_ARENA_MAX=""
echo "Setting up job resources"
ln -sf -- "/tmp/hadoop-yangheewon/nm-local-dir/usercache/yangheewon/appcache/application_1666524110537_0005/filecache/11/job.jar" "job.jar"
mkdir -p jobSubmitDir
ln -sf -- "/tmp/hadoop-yangheewon/nm-local-dir/usercache/yangheewon/appcache/application_1666524110537_0005/filecache/10/job.splitmetainfo" "jobSubmitDir/job.splitmetainfo"
mkdir -p jobSubmitDir
ln -sf -- "/tmp/hadoop-yangheewon/nm-local-dir/usercache/yangheewon/appcache/application_1666524110537_0005/filecache/12/job.split" "jobSubmitDir/job.split"
ln -sf -- "/tmp/hadoop-yangheewon/nm-local-dir/usercache/yangheewon/appcache/application_1666524110537_0005/filecache/13/job.xml" "job.xml"
echo "Copying debugging information"
# Creating copy of launch script
cp "launch_container.sh" "/Users/yangheewon/hadoop-3.3.1/logs/userlogs/application_1666524110537_0005/container_1666524110537_0005_01_000001/launch_container.sh"
chmod 640 "/Users/yangheewon/hadoop-3.3.1/logs/userlogs/application_1666524110537_0005/container_1666524110537_0005_01_000001/launch_container.sh"
# Determining directory contents
echo "ls -l:" 1>"/Users/yangheewon/hadoop-3.3.1/logs/userlogs/application_1666524110537_0005/container_1666524110537_0005_01_000001/directory.info"
ls -l 1>>"/Users/yangheewon/hadoop-3.3.1/logs/userlogs/application_1666524110537_0005/container_1666524110537_0005_01_000001/directory.info"
echo "find -L . -maxdepth 5 -ls:" 1>>"/Users/yangheewon/hadoop-3.3.1/logs/userlogs/application_1666524110537_0005/container_1666524110537_0005_01_000001/directory.info"
find -L . -maxdepth 5 -ls 1>>"/Users/yangheewon/hadoop-3.3.1/logs/userlogs/application_1666524110537_0005/container_1666524110537_0005_01_000001/directory.info"
echo "broken symlinks(find -L . -maxdepth 5 -type l -ls):" 1>>"/Users/yangheewon/hadoop-3.3.1/logs/userlogs/application_1666524110537_0005/container_1666524110537_0005_01_000001/directory.info"
find -L . -maxdepth 5 -type l -ls 1>>"/Users/yangheewon/hadoop-3.3.1/logs/userlogs/application_1666524110537_0005/container_1666524110537_0005_01_000001/directory.info"
echo "Launching container"
exec /bin/bash -c "$JAVA_HOME/bin/java -Djava.io.tmpdir=$PWD/tmp -Dlog4j.configuration=container-log4j.properties -Dyarn.app.container.log.dir=/Users/yangheewon/hadoop-3.3.1/logs/userlogs/application_1666524110537_0005/container_1666524110537_0005_01_000001 -Dyarn.app.container.log.filesize=0 -Dhadoop.root.logger=INFO,CLA -Dhadoop.root.logfile=syslog  -Xmx1024m org.apache.hadoop.mapreduce.v2.app.MRAppMaster 1>/Users/yangheewon/hadoop-3.3.1/logs/userlogs/application_1666524110537_0005/container_1666524110537_0005_01_000001/stdout 2>/Users/yangheewon/hadoop-3.3.1/logs/userlogs/application_1666524110537_0005/container_1666524110537_0005_01_000001/stderr "
