# Requirements

sudo apt install docker.io
sudo systemctl start docker
apt-get install x11-xserver-utils
xhost +local:docker

# Make the Image
docker build .

# Run the container
docker run -it \
    --env="DISPLAY" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --device=/dev/kvm \
    --privileged \
    GeckOS_Container