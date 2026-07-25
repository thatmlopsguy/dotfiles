# Install Docker

Install the docker.io package

$ sudo apt install docker.io util-linux-extra

Verify Docker service is running

$ sudo systemctl start docker
$ sudo systemctl enable docker

Add your user to the docker group

$ sudo usermod -aG docker $USER

Apply the group membership

$ newgrp docker

Check Docker Version

$ docker --version
Docker version 29.1.3, build 29.1.3-0ubuntu4.1

Run a Test Container

$ docker run hello-world

```text
Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/get-started/
```

## Reference

- [](https://linuxconfig.org/how-to-install-docker-on-ubuntu-26-04)
