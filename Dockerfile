FROM ubuntu:17.10
ARG SOURCE
ARG CONTRACT
RUN apt-get update
RUN apt-get install -y software-properties-common python-software-properties
RUN add-apt-repository -y ppa:ethereum/ethereum
RUN apt-get update
RUN apt-get install  -y solc
RUN apt install -y python3-pip
RUN echo 'alias pip=pip3' >> ~/.bashrc
RUN echo 'alias python=python3' >> ~/.bashrc
RUN /bin/bash -c "source ~/.bashrc"
RUN pip3 install solidity-flattener
COPY $SOURCE /src/$SOURCE
WORKDIR /src/$SOURCE
ENV CONTRACT ${CONTRACT}
ENTRYPOINT solidity_flattener $CONTRACT