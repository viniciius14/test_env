# Make the Image
docker build .

# Run the container
docker run -it \
    --env="DISPLAY" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --device=/dev/kvm \
    --privileged \
    your-qemu-container