FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y


RUN apt-get update && apt-get install -y \
    qemu qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils virt-manager \
    x11-apps

# Set the environment variable for X11 forwarding
ENV DISPLAY=:0

# Optional: add a default entry point to start QEMU
ENTRYPOINT ["qemu-system-x86_64"]