sudo spt install -y nginx
sudo apt update
ps -ef 
ps -ef | grep nginx
sudo service nginx start
sudi service nginx stop
top
htop
head
ss -tuln | grep ':80' || true
