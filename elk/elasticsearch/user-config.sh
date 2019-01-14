mkdir /home/jason/elasticsearch
mkdir /home/jason/elasticsearch/es1
mkdir /var/local/es1

# 赋值数据目录给cjr可以访问.
cd ~
chown -R cjr:cjr /var/local/es1
chown -R cjr:cjr /home/jason/elk

