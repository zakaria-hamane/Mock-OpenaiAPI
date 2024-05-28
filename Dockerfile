# Use the official Mockoon CLI image
FROM mockoon/cli:latest

# Set working directory
WORKDIR /data

# Copy the Mockoon configuration file into the container
COPY mockoon.json /data/mockoon.json

# Expose the port that Mockoon will run on
EXPOSE 3000

# Command to run Mockoon
CMD ["-d", "/data/mockoon.json", "-p", "3000"]
