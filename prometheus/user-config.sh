# 添加用户，后期用此账户启动服务
groupadd prometheus
useradd -g prometheus -s /sbin/nologin prometheus

# 赋权限
cd ~
chown -R prometheus:prometheus /usr/local/prometheus

# 创建prometheus运行数据目录

mkdir -p /var/lib/prometheus
chown -R prometheus:prometheus /var/lib/prometheus

# 设置开机启动
cp prometheus.service /usr/lib/systemd/system/prometheus.service
chown prometheus:prometheus /usr/lib/system/system/prometheus.service

systemctl enable prometheus
systemctl start prometheus

# 设置iptable
vi /etc/sysconfig/iptables

-A INPUT -p tcp -m state --state NEW -m tcp --dport 9090 -j ACCEPT

service iptables restart 

# 查看服务状态
systemctl status prometheus

# 或者
netstat -tunlp | grep 9090
