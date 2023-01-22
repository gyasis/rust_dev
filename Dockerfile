FROM rust:latest

# Install the required dependencies
RUN apt-get update && apt-get install -y \
    clang \
    cmake \
    pkg-config 


ENV NODE_VERSION=14

RUN apt-get update && apt-get install -y \
    python${PYTHON_VERSION} \
    python${PYTHON_VERSION}-dev \
    python3-pip 

ENV PATH "$PATH:/usr/bin/python${PYTHON_VERSION}"


RUN apt-get install curl -y

# Install nvm
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

# Install the specified version of Node.js
RUN . ~/.nvm/nvm.sh && nvm install ${NODE_VERSION}

ENV PYTHONPATH="/usr/bin/python3.9"


# Expose the port that the application will run on
EXPOSE 8000

RUN . ~/.bashrc

# Create a new user and set the working directory
# RUN useradd -m rust
# USER rust
# WORKDIR /home/rust