# Use the official Ubuntu base image
FROM ubuntu:latest

# Set environment variables
ENV PYTHONUNBUFFERED=1

# Install necessary dependencies and Python 3.11
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:deadsnakes/ppa && \
    apt-get update && \
    apt-get install -y python3.11 python3.11-venv python3.11-dev && \
    update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.11 1

# Set up a working directory
WORKDIR /app
