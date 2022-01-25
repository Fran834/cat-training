# cat-training

[![Open in GitPod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io#https://github.com/Fran834/cat-training)

working


Run basic NGINX: 

docker run -p 8080:80 nginx

Connect my local website:

docker run -p 8080:80 -v $(pwd)/html:/usr/share/nginx/hmtl:ro \nginx