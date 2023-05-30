# GNS3-Server on M1 Mac using a Docker Container

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
### Complete Code in `Dockerfile`
```js
FROM ubuntu:latest
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip3 install gns3-server
EXPOSE 3080
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

 Inside the Docker container's shell, install Dynamips by run
 ```js
apt-get update
apt-get install dynamips
```

update the package lists inside the Docker container by running the following command
```js
apt-get update
```

Install the necessary build tools and dependencies by running the following command
```js
apt-get install build-essential git libelf-dev libpcap-dev
```

Clone the uBridge repository
```js
git clone https://github.com/GNS3/ubridge.git
```

Change to the uBridge directory
```js
cd ubridge
```

Build uBridge by running
```js
make
```


Install uBridge by running
```js
make install
```


Once the installation is complete, exit the container's shell
```js
exit
```



you should have the GNS3 server running inside a Docker container now. 
Access the GNS3 web interface by visiting http://localhost:3080 in your web browser.