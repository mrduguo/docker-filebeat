## Docker Based Filebeat Distribution

> https://www.elastic.co/products/beats/filebeat

Credit to [bargenson/docker-filebeat](https://github.com/bargenson/docker-filebeat) for original version.

## Build

    docker build -t mrduguo/docker-filebeat .

## Run With Logstash Output

    docker run -it --rm --net=host -v /var/log:/logs/host -v /var/lib/docker/containers:/logs/containers -v /logs/metricbeat:/logs/metricbeat -v /logs/apps:/logs/apps -v /var/lib/filebeat:/data -e SHIPPER_NAME=${hostname} mrduguo/docker-filebeat

## Run With Debug Output

    docker run -it --rm -v /var/log:/logs/host mrduguo/docker-filebeat filebeat -e -E output.console.pretty=true

