FROM ubuntu:22.04

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y git python3 python3-pip

RUN pip install open-interpreter==0.1.4
RUN pip install numpy matplotlib pandas

RUN pip install --upgrade open-interpreter

WORKDIR /root

# Copy main.py from your local directory into the Docker image
COPY main.py .

# Command to run main.py when the container is started
# CMD ["python3", "main.py"]

CMD ["interpreter", "-m", "Code-Llama"]