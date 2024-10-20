FROM ubuntu:22.04

# RUN apt-get update && apt-get install -y \
#     qemu qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils virt-manager \
#     x11-apps
RUN apt-get update
RUN apt-get install -y qemu
RUN apt-get install -y qemu-kvm
RUN apt-get install -y libvirt-daemon-system
RUN apt-get install -y libvirt-clients
RUN apt-get install -y bridge-utils
RUN apt-get install -y virt-manager
RUN apt-get install -y x11-apps
# Set the environment variable for X11 forwarding
ENV DISPLAY=:0

# Optional: add a default entry point to start QEMU
ENTRYPOINT ["qemu-system-x86_64"]