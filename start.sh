##MacBook: en0 and en1 may be wired/wireless interfaces
ip="$(ifconfig | grep -A 1 'eth0' | tail -1 | cut -d ':' -f 2 | cut -d ' ' -f 1)"
sed -i "s/DOCKER_HOST_IP/$ip/g" prometheus.yml
docker-compose up -d --build
