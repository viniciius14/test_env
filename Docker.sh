# Requirements
sudo apt install docker.io | tee docker_log.txt
sudo systemctl start docker | tee -a docker_log.txt
apt-get install x11-xserver-utils | tee -a docker_log.txt
xhost +local:docker | tee -a docker_log.txt

# Make the Image
sudo docker build misc/docker/. --tag geckos_container | tee -a docker_log.txt

# Run the container
sudo docker run -it \
    --env="DISPLAY" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --device=/dev/kvm \
    --privileged \
    geckos_container | tee -a docker_log.txt
