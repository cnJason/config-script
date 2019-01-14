<<<<<<< HEAD
docker run  -d --name wy-logstash -v /etc/localtime:/etc/localtime -v /home/jason/elk/logstash/config-dir/logstash.conf:/config-dir/logstash.conf logstash:6.5.1
=======
docker run  -d --name wy-logstash -v /etc/localtime:/etc/localtime -v /logstash/config-dir/logstash.conf:/config-dir/logstash.conf logstash:6.5.1
>>>>>>> dev
