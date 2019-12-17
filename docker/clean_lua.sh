# Check for the containers, if it exists stop it
if [ $(docker ps -a | grep lua | wc -l) = "1" ]; then
    docker rm -f lua
fi

# Check the docker volume if it exists delete it
if [ $(docker volume ls | grep LuaSrc | wc -l) = "1" ]; then
    docker volume rm LuaSrc
fi

# Check the docker image, if it exists delete it
if [ $(docker images ubuntu:lua | grep lua | wc -l) = "1" ]; then
    docker rmi -f ubuntu:lua
fi

# Check the docker image, if it exists delete it
if [ $(docker images ubuntu:bionic | grep bionic | wc -l) = "1" ]; then
    docker rmi -f ubuntu:bionic
fi
