systemctl start docker.service
systemctl start docker.socket

docker pull jupyter/base-notebook

docker build -t custom-jupyter-image .

docker run -p 8888:8888 -v /home/fabioc/Documents/AnalisiTrafficoBologna:/home/jovyan/work/ custom-jupyter-image
