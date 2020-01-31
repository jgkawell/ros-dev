
docker build -f ./docker/Dockerfile --target base -t jgkawell/ros:base ./docker
docker build -f ./docker/Dockerfile --target nvidia -t jgkawell/ros:base-nvidia ./docker
