# GNS3-Server on M1 Mac

## Start by creating a `Dockerfile` (NO FILE EXTENSION) in directory of your choice 

## Open the `Dockerfile` in editor ( I use Nano ) 


### Define the Docker Image Base 
```js
FROM ubuntu:latest
```

### Install Dependencies
```js
RUN apt-get update && apt-get install -y python3 python3-pip
```

### Install GNS3 Server
```js
RUN pip3 install gns3-server
```

### Expose Ports (Optional)
```js
EXPOSE 3080
```

### Start GNS3 Server
```js
CMD ["gns3server"]
```

### Build the Docker Image
```js
docker build -t gns3-server-image .
```

### Run the Docker Container
```js
docker run -d --name gns3-server-container -p 3080:3080 gns3-server-image
```
This command will start the Docker container

you should have the GNS3 server running inside a Docker container now. 
Access the GNS3 web interface by visiting http://localhost:3080 in your web browser.