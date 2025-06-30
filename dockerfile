# Use the official Python image from Docker Hub
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application code
COPY . .

# Expose the port your app runs on (change if needed)
EXPOSE 8080

# Set environment variable (optional)
ENV NAME="World"

# Command to run your application
CMD ["python", "app.py"]
