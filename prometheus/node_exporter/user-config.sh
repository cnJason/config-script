# 下载
cd /usr/local/src/ 
wget https://github.com/prometheus/node_exporter/releases/download/v0.17.0/node_exporter-0.17.0.linux-amd64.tar.gz

# 部署
tar -zxvf node_exporter-0.17.0.linux-amd64.tar.gz -C /usr/local/
cd /usr/local/
mv node_exporter-0.17.0.linux-amd64/ node_exporter/

# 设置用户
groupadd prometheus
useradd -g prometheus -s /sbin/nologin prometheus
chown -R prometheus:prometheus /usr/local/node_exporter/

cp node_exporter.service /usr/lib/systemd/system/node_exporter.service

systemctl enable node_exporter
systemctl start node_exporter

vi /etc/sysconfig/iptables
-A INPUT -p tcp -m state --state NEW -m tcp --dport 9100 -j ACCEPT
service iptables restart