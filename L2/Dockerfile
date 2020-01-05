FROM my/pytorch_1_3:mypt_l1
EXPOSE 8888
EXPOSE 6006

ARG USERNAME=casi
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME -s /bin/bash \
    && mkdir -p /home/$USERNAME/.vscode-server /home/$USERNAME/.vscode-server-insiders \
    && chown ${USER_UID}:${USER_GID} /home/$USERNAME/.vscode-server* \
    && apt-get install -y sudo \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME
WORKDIR /home/casi

RUN mkdir -p /home/${USERNAME}/workspace \
    #&& mkdir -p /home/${USERNAME}/tensorboard/runs \
    && mkdir -p /home/${USERNAME}/scripts \
    && chown -R casi:casi /home/casi/
COPY *.sh /home/${USERNAME}/scripts/
#CMD ["/home/casi/scripts/run.sh"]
