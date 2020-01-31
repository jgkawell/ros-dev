[![Build Status](https://travis-ci.com/jgkawell/ros-dev.svg?branch=master)](https://travis-ci.com/jgkawell/ros-dev)

# ros-dev

A helper repository for setting up a development environment for ROS.


## Docker

This is a simple ROS development container running Ubuntu 16.04 and ROS Kinetic Desktop.

The image for this lives on Docker Hub as [jgkawell/ros](https://hub.docker.com/repository/docker/jgkawell/ros).


### Setup

As long as your network is fast, I would suggest pulling this image from Docker Hub instead of building locally from the Dockerfile. I also suggest using the launch script I've written to automate this process (pulling image, setting up xauth and xhost, etc.). This launch script is in another helper repository so we need to pull that first:

```
git clone https://github.com/jgkawell/docker-scripts.git
bash ./docker-scripts/tools/launch.sh {user} {repository} {tag} {host}
```

Make sure to use the user, repository, tag, and host that you would like. For example, using the image built with the Dockerfile in this repository on a Linux computer running Intel graphics would look like this:

```
bash ./docker-scripts/tools/launch.sh jgkawell ros base intel
```

If you're running a Linux host then check [the documentation](https://github.com/jgkawell/docker-scripts/wiki) for how to set up hardware acceleration which is needed for these images. It will work with either Nvidia or Intel graphics.

Then, in another terminal, start a shell on the box:

```
docker exec -it {container_name} bash
```

Be sure to replace `{container_name}` with the name of the container you built which depends on the host you're using:

- `windows` or `intel` = `ros-base`
- `nvidia` = `ros-base-nvidia`

You can relaunch the container using the launch script at any point in the future.


## Local

This will simply install ROS locally on your machine. The only real prerequisite is that you are running Ubuntu 16.04.

### Setup

Simply run the install script and it should get everything set up for you:

```
sudo bash local/ros-install.sh
```


## Usage

This is a fully functional ROS development box so you can use [the official documentation](http://wiki.ros.org/). Hack away!