mkdir /home/jason/elk
mkdir /home/jason/elk/elasticsearch
mkdir /home/jason/elk/elasticsearch/es1
mkdir /home/jason/elk/elasticsearch/es2
mkdir /var/local/es1
mkdir /var/local/es2

# 赋值数据目录给cjr可以访问.
cd ~
chown -R cjr:cjr /var/local/es1
chown -R cjr:cjr /var/local/es2
chown -R cjr:cjr /home/jason/elk

