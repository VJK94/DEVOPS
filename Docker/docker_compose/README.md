In order to install docker-compose use: sudo curl -L https://github.com/docker/compose/releases/download/1.16.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

Make docker-compose executable:sudo chmod +x /usr/local/bin/docker-compose

The compose yml will spin the multiple images at same time using the build command:docker-compose up -d --build

In order to scale your containers use the command:docker-compose up -d --scale mysql=4 where mysql is the service name in docker-compose file and 4 is the number of replicate copies
