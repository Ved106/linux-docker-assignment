# Use the official Ubuntu base image
FROM ubuntu:latest

# Set metadata
LABEL maintainer="student@example.com"
LABEL description="A basic container for Linux command operations"

# Update package lists and install basic tools
# - curl/wget: for downloading files
# - vim/nano: for text editing
# - git: for version control
# - iputils-ping/net-tools: for network testing
# - htop: for monitoring system resources
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    vim \
    nano \
    git \
    iputils-ping \
    net-tools \
    htop \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# default command to keep the container running and drop into a shell
CMD ["/bin/bash"]