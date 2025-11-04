# Use Python base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Install necessary dependencies including git
COPY requirements.txt
RUN pip install -r requirements.txt

# Copy the contents of the project to the /app directory
COPY . .


# Ensure the entrypoint script exists and is executable (N/A)


# Set the entrypoint to the entrypoint script
ENTRYPOINT ["sh", "entrypoint.sh"]
