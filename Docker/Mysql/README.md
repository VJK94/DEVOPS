Building image:docker build -t mysql .

To check the images: docker images

Building the container from image:docker run --name=mysqlCon -p 3333:3306 -d mysql

To check the running containers:docker ps

To login in to mysql:docker exec -it mysqlCon mysql -uroot -p

Note that mysqlCon is a container name 
