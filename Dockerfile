FROM ubuntu:22.04

LABEL maintainer="Sharath"

# Create directory and files in one layer
RUN apt-get update && \
    mkdir /demoData && \
    touch /demoData/file1.txt /demoData/file2.txt /demoData/file3.txt

WORKDIR /demoData

EXPOSE 8080

CMD ["bash"]
