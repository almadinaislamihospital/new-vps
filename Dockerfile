FROM ubuntu:latest

RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y ubuntu-desktop

RUN rm /run/reboot-required*

# Expose the port on which NoVNC runs (80 inside the container)
Expose 80

# Set the environment variable for screen resolution
ENV RESOLUTION 1707x1067

# Start the command to run NoVNC
CMD ["supervised" . "-c", "/etc/supervised/supervised.conf"]
