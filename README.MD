# docker-telemetry
This is a dockerized app for Cisco telemetry. It consists of four containers, orchestrated by docker-compose. This is a hands-on workshop that was first presented at Devnet in CiscoLive 2017. The purpose of the workshop is to demonstrate one simple way of building a telemetry app using Docker containers. A small telemetry data was captured for replay.

## Containers
1. Telemetry data decoder, pipeline, https://github.com/cisco/bigmuddy-network-telemetry-pipeline
2. Prometheus push gateway
3. Prometheus database
4. Grafana visualization

## Basic Operations
1. Ensure you have docker installed and running
2. Download this git repo and change to this directory
3. Get your host IP address and replace all instances of IP address in the prometheus.yml file
4. Build images and start the all containers: docker-compose up -d --build
5. Login to grafana, add data source
6. Uploads two sample dashboards. The traffic dashboard may not show anything as the data may be out of date by the time you use it. If that is the case, you will need your own data.
