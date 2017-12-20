#!/bin/bash
ps -ef |grep /usr/local/apache-tomcat-8.0.24 |grep -v grep |awk '{print $2}' |xargs kill -9

