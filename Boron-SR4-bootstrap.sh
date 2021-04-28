#!/bin/bash
#https://www.youtube.com/watch?v=rAm48gVv8_A Using OpenDaylight with mininet
QTR=21wi
MININET_VERSION="2.3.0d6"
POX_VERSION=fangtooth

sudo apt-get update
sudo apt-get install -y python2 python-is-python2 unzip net-tools
git clone https://github.com/mininet/mininet
cd mininet 
git checkout $MININET_VERSION
sed -i 's/cgroup-bin/cgroup-tools/g' util/install.sh
util/install.sh -nfvp
cd ~/pox
git checkout $POX_VERSION
wget https://courses.cs.washington.edu/courses/cse461/$QTR/assignments/project2/project2.zip
unzip project2.zip
ln -s ~/461_mininet/pox/* ~/pox/pox/misc/

# cd
# sudo apt-get install -y maven git openjdk-8-jre
# wget https://nexus.opendaylight.org/content/repositories/opendaylight.release/org/opendaylight/integration/opendaylight/0.13.3/opendaylight-0.13.3.zip
# unzip opendaylight-0.13.3.zip
# cd opendaylight
# export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
# echo "export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64" >> ~/.bashrc

cd
sudo apt-get install -y maven git openjdk-8-jre
wget https://nexus.opendaylight.org/content/repositories/public/org/opendaylight/integration/distribution-karaf/0.5.4-Boron-SR4/distribution-karaf-0.5.4-Boron-SR4.zip
unzip distribution-karaf-0.5.4-Boron-SR4.zip
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
echo "export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64" >> ~/.bashrc


#screen -S mn  
#sudo mn --topo=linear,3 --mac --switch=ovs,protocols=OpenFlow13 --controller=remote,ip=localhost,port=6633 
#cd distribution-karaf-0.5.4-Boron-SR4
#screen -S karaf
#./bin/karaf
#feature:install odl-restconf 
#feature:install odl-l2switch-switch 
#feature:install odl-mdsal-apidocs 
#feature:install odl-dlux-all
#screen -S client
#curl 127.0.0.1:8181/index.html -L