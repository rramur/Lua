# Build the Docker if it doesnt exist
if [ $(docker images ubuntu:lua | grep lua | wc -l) = "1" ]; then
    echo "Docker image lua exist"
else
    docker build --rm -t ubuntu:lua .
fi

# Check for the containers, if it exists launch shell 
if [ $(docker ps -a | grep lua | wc -l) = "1" ]; then
    docker exec -it lua bash
else
    docker run -it --rm -v $PWD/LuaSrc:/src --name lua ubuntu:lua bash
fi
