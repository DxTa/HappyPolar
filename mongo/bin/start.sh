docker stop mongodb && docker rm mongodb
docker run -it -p 27017:27017 -v mongo-data:/data/db --name mongodb -d mongo mongod
