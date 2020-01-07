FROM continuumio/miniconda:latest
LABEL maintainer="Docker student Paavo Muranen <paavo@muranen.fi>"

# set workdir
WORKDIR /

# Install jupyter to this conda
RUN /opt/conda/bin/conda install jupyter -y

# mount  notebooks folder volume when running

VOLUME /notebooks

CMD /opt/conda/bin/jupyter notebook --notebook-dir=/notebooks --port=8888 --allow-root --no-browser --ip=0.0.0.0
# docker 
# docker run -it -v /home/paavo/defa/courseware/part1/117/notebooks:/notebooks -p 8888:8888 vaapo/juppi
#docker pull vaapo/defa_docker_part117
#mkdir notebooks
#docker run -it -v $(pwd)/notebooks:/notebooks -p 8888:8888 vaapo/defa_docker_part117
