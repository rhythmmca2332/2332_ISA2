# Step i: Use Ubuntu as the base image
FROM ubuntu:latest

# Step ii: Install python3, python3-pip, and python3-flask
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip3 install flask

# Step iii: Copy application.py from the local system to /opt/app in the container
COPY application.py /opt/app/

# Step iv: Set the command to start Flask when the container starts
CMD ["sh", "-c", "FLASK_APP=/opt/app/application.py flask run --host=0.0.0.0"]
