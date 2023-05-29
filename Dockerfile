FROM ubuntu:latest
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip3 install gns3-server
EXPOSE 3080
CMD ["gns3server"]

