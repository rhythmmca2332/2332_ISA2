# Step i: Use Ubuntu as the base image
# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /opt/app

# Copy application files to the container
COPY application.py .

# Install Flask
RUN pip install --no-cache-dir flask

# Set the environment variable for Flask
ENV FLASK_APP=application.py

# Specify the command to run on container start
CMD ["flask", "run", "--host=0.0.0.0"]
