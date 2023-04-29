FROM jupyter/base-notebook:latest

ENV JUPYTER_PORT=8888
WORKDIR /home/jovyan

COPY requirements.txt .
RUN pip install -r requirements.txt

RUN jupyter kernelspec list

ENTRYPOINT ["jupyter", "notebook"]

