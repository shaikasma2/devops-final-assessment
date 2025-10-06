# ----------------------------------------------------------
# Dockerfile
# ----------------------------------------------------------
# DevOps Final Assessment
# Builds a lightweight Python container that runs:
#   1. hello.py  (Python script)
#   2. scripts/sysinfo.sh  (Bash system info script)
# ----------------------------------------------------------

# Start from a minimal Python base image
FROM python:3.11-slim

# Set a working directory inside the container
WORKDIR /app

# Copy files from your project into the container
COPY hello.py /app/hello.py
COPY scripts/sysinfo.sh /app/scripts/sysinfo.sh

# Make sure the shell script is executable
RUN chmod +x /app/scripts/sysinfo.sh

# Run both scripts when the container starts
CMD ["/bin/bash", "-c", "python /app/hello.py && /app/scripts/sysinfo.sh"]
