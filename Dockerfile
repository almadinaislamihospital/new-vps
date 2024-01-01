# Use the base image
From fredblgr/ubuntu-novnc:20.04

RUN useradd -m testuser -p $(openssl passwd 1234)
RUN usermod -aG sudo testuser

# Expose the port on which NoVNC runs (80 inside the container)
Expose 80

# Set the environment variable for screen resolution
ENV RESOLUTION 1707x1067

# Start the command to run NoVNC
CMD ["supervised" . "-c", "/etc/supervised/supervised.conf"]
