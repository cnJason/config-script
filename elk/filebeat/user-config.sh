docker run -d  --restart=always --name=wy-filebeat
-v /var/log/command.log:/var/log/command.log:ro
-v /home/jason/elk/filebeat/filebeat.yml:/usr/share/filebeat/filebeat.yml 
-v /home/jason/elk/filebeat/registry/:/usr/share/filebeat/data/registry/ docker.elastic.co/beats/filebeat:5.5.1
