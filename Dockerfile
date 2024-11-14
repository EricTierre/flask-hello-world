# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any dependencies specified in requirements.txt
RUN pip install --no-cache-dir flask

# Make port 7666 available to the world outside this container
EXPOSE 7666

# Run app.py when the container launches
CMD ["python", "app.py"]