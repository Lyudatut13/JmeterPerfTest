#!/bin/bash

#set pause between addition of users

#UserperSeconds=1

#set duration of test

duration=600

#set requests per second rate

#requestsPerSecond=2

#type of the test web

myTestName_web=ramp-up_nopCommerce

#controller rmi port for web

#client_rmi_web=4000

#-Jclient.rmi.localport=$client_rmi_web

#RMI registry on LGs for web  

rmi_registry_web='10.128.0.2:40869'

server=35.234.91.139


base_dir=`pwd`

#path to html report

html_report_path="${base_dir}/html_reports/${myTestName_web}_html_report_`eval date +%Y%m%d-%H%M`"

#path to log files

logs_path="${base_dir}/jmeter_logs/${myTestName_web}_log_`eval date +%Y%m%d-%H%M`.log"

#path to script

script_path="${base_dir}/scripts/Test_NopCommerce.jmx"

#path to user feeds

#feeds="${base_dir}/feeds/users.csv"


${base_dir}/jmeter/bin/jmeter.sh -n -JserverAddress=${server} -Jduration=${duration} -JmyTestName=${myTestName_web} -t $script_path -r
#-Juser_feeds=${feeds} 
#-l $logs_path -e -o $html_report_path