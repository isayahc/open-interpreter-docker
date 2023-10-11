# Use the official Ubuntu base image
FROM ubuntu:latest

# Set environment variables
ENV PYTHONUNBUFFERED=1
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary dependencies and Python 3.10
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:deadsnakes/ppa && \
    apt-get update && \
    apt-get install -y python3.10 python3.10-venv python3.10-dev && \
    update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 1

# Set up a working directory
WORKDIR /app

# Copy the main.py file into the image
COPY main.py .

# Set the default command to run main.py using Python 3.10
CMD ["python3", "main.py"]
