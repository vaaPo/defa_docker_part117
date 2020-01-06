# defa_docker_part117
This docker image has jupyter on conda from continuumio/miniconda:latest

## HOWTO
```code
docker pull vaapo/defa_docker_part117
mkdir notebooks
docker run -it -v {$pwd}/notebooks:/notebooks -p 8888:8888 
```
Then you shuold see message with url like:

http://(ffb858268a34 or 127.0.0.1):8888/?token=ae48fd5c7d867668892ed57664937e906264dcefd21a16c4

Open the URL to 127.0.0.1 with browser on the host OS