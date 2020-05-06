#!/bin/bash
while :
do
 clear
 echo "   Please select your software to install"
 echo "1. Apache 2"
 echo "2. Mysql"
 echo "3. Java 8"
 echo "4. Apache Tomcat"
 echo "5. Exit"
 echo -n "Please enter option [1 - 4]"
 read opt
 case $opt in

  1)sudo apt-get update
    sudo apt install apache2;
    systemctl start apache2;
    #sudo service apache2 stop;
    echo "************ Apache installed and running *************";
    echo "[enter] key to continue. . .";
    read enterKey;;

  2)sudo apt-get update;
    sudo apt-get install mysql-server;
    mysql --version;
    sudo mysql_secure_installation
    echo "*********** Mysql installed successfully*************";
    echo "[enter] key to continue. . .";
    read enterKey;;

  3)sudo apt-get update;
    sudo apt install openjdk-8-jdk
    echo "*********** Java 8 installed successfully*************";
    echo "Press [enter] key to continue. . .";
    read enterKey;;

  4)cd /tmp;
    curl -O https://apache.mirrors.lucidnetworks.net/tomcat/tomcat-9/v9.0.34/bin/apache-tomcat-9.0.34.tar.gz;
    sudo mkdir /opt/tomcat;
    sudo tar xzvf apache-tomcat-*tar.gz -C /opt/tomcat --strip-components=1;
    echo "*********** Apache Tomcat9 installed successfully*************";
    echo "Press [enter] key to continue. . .";
    read enterKey;;

  5) echo "Bye $USER";
     exit 1;;

  *) echo "$opt is an invaild option. Please select option between 1-4 only";
     echo "Press [enter] key to continue. . .";
     read enterKey;;
esac
done
