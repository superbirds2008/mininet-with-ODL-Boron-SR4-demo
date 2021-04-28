```
screen -S mn  
sudo mn --topo=linear,3 --mac --switch=ovs,protocols=OpenFlow13 --controller=remote,ip=localhost,port=6633 
cd distribution-karaf-0.5.4-Boron-SR4
screen -S karaf
./bin/karaf
feature:install odl-restconf 
feature:install odl-l2switch-switch 
feature:install odl-mdsal-apidocs 
feature:install odl-dlux-all
screen -S client
curl 127.0.0.1:8181/index.html -L
```