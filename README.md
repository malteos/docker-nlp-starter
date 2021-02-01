# Docker starter code for NLP related research projects

- Docker
- [Userdocker](https://github.com/joernhees/userdocker/)
- Python
- PyTorch + [NVIDIA Accelerator](https://ngc.nvidia.com/catalog/containers/nvidia:pytorch)


If you need additional packages modify the `requirements.txt`

NOTE: Replace `malteos` with your own Docker Hub username.

```bash
# build Docker image
docker build -t nlp-starter .

# Run Jupyter
docker run -p 8888:8888 nlp-starter

# Authenticate with your credentials
docker login

# Tag image for hub
docker tag nlp-starter malteos/nlp-starter:latest  

# Push to hub
docker push malteos/nlp-starter:latest 
```

Use image on the server
```bash
# connect through SSH (with proxy tunnel)
ssh -D <proxy_port> server_ip

# start a session (tmux or screen)
tmux

# pull image
userdocker pull malteos/nlp-starter:latest 

# check for free GPU resources
userdocker ps --gpu-free

# start container with shell
sudo userdocker --executor=nvidia-docker run -it --rm malteos/nlp-starter bash

# start container with Jupyter (change ports if needed)
sudo userdocker --executor=nvidia-docker run -it --rm -p 8881:8881 malteos/nlp-starter jupyter notebook --ip 0.0.0.0 --port 8881 --no-browser

# run CLI script in container
sudo userdocker --executor=nvidia-docker run --rm malteos/nlp-starter python cli.py dummy "hello world"
```

