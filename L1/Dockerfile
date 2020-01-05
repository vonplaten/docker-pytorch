FROM pytorch/pytorch:1.3-cuda10.1-cudnn7-devel
LABEL author="Casimir von Platen"
RUN apt-get update
RUN apt-get install -y libsm6 libxext6 libxrender-dev libglib2.0-0
RUN apt install psmisc -y
RUN pip install jupyterlab
RUN pip install opencv-python
RUN pip install pandas
RUN pip install matplotlib
RUN pip install pylint
RUN pip install sklearn
RUN pip install tensorboard
RUN pip install autopep8
RUN pip install colorlover
RUN pip install seaborn
RUN pip install torchvision
#RUN pip install future
