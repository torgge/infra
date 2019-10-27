#!/bin/bash

#sudo -s


##Install Java 8

#yum update -y

#yum install java-1.8.0

java -version

#touch ~/.bash_profile
#echo "export JAVA_HOME=/usr/java/jdk1.8.0_131/" >> ~/.bash_profile
#echo "export JRE_HOME=/usr/java/jdk1.8.0_131/jre" >> ~/.bash_profile

#source ~/.bash_profile

#echo $JAVA_HOME

#printf "%s %s %s\n" ::1       $(hostname) $(hostname) >> /etc/hosts
#printf "%s %s %s\n" 127.0.0.1 $(hostname) $(hostname) >> /etc/hosts

##Install Cassandra

#touch /etc/yum.repos.d/cassandra.repo

#echo "[cassandra]" 						  >> /etc/yum.repos.d/cassandra.repo
#echo "name=Apache Cassandra"					  >> /etc/yum.repos.d/cassandra.repo
#echo "baseurl=https://www.apache.org/dist/cassandra/redhat/311x/" >> /etc/yum.repos.d/cassandra.repo
#echo "gpgcheck=1" 						  >> /etc/yum.repos.d/cassandra.repo
#echo "repo_gpgcheck=1"						  >> /etc/yum.repos.d/cassandra.repo
#echo "gpgkey=https://www.apache.org/dist/cassandra/KEYS"	  >> /etc/yum.repos.d/cassandra.repo

touch /etc/yum.repos.d/datastax.repo

echo "[datastax]"                                   >> /etc/yum.repos.d/datastax.repo
echo "name = DataStax Repo for Apache Cassandra"    >> /etc/yum.repos.d/datastax.repo
echo "baseurl = http://rpm.datastax.com/community"  >> /etc/yum.repos.d/datastax.repo
echo "enabled = 1"                                  >> /etc/yum.repos.d/datastax.repo
echo "gpgcheck = 0"                                 >> /etc/yum.repos.d/datastax.repo

yum -y install dsc20

systemctl enable cassandra.service

#yum -y install cassandra

systemctl daemon-reload

systemctl start cassandra

systemctl enable cassandra

#nodetool status
















