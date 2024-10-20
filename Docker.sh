# Requirements
sudo apt install docker.io | tee log.txt
sudo systemctl start docker | tee -a log.txt
apt-get install x11-xserver-utils | tee -a log.txt
xhost +local:docker | tee -a log.txt

# Make the Image
sudo docker build misc/docker/. --tag geckos_container | tee -a log.txt

# Run the container
sudo docker run -it \
    --env="DISPLAY" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --device=/dev/kvm \
    --privileged \
    geckos_container | tee -a log.txt
