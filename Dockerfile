# Use ubuntu as the base image
FROM ubuntu:latest

# Install python3, python3-pip and python3-flask
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip3 install Flask

# Copy the application.py file to /opt/app
COPY application.py /opt/app/

# Set environment variable and run Flask application
ENV FLASK_APP=/opt/app/application.py
CMD ["flask", "run", "--host=0.0.0.0"]
