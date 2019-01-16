# 下载
cd /usr/local/src/
wget https://dl.grafana.com/oss/release/grafana-5.4.2-1.x86_64.rpm 
yum localinstall grafana-5.4.2-1.x86_64.rpm

# 配置文件位于：/etc/grafana/grafana.ini
# 设置开机启动
systemctl enable grafana-server
systemctl start grafana-server

# 设置iptables
vi /etc/sysconfig/iptables
-A INPUT -p tcp -m state --state NEW -m tcp --dport 3000 -j ACCEPT
service iptables restart 

# 默认用户名是 admin 密码是weiyidev