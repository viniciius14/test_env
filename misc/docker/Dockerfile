FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y


RUN apt-get qemu
RUN apt-get qemu-kvm
RUN apt-get libvirt-daemon-system
RUN apt-get libvirt-clients
RUN apt-get bridge-utils
RUN apt-get virt-manager
RUN apt-get x11-apps

# Set the environment variable for X11 forwarding
ENV DISPLAY=:0

# Optional: add a default entry point to start QEMU
ENTRYPOINT ["qemu-system-x86_64"]