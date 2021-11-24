---
layout: post
title: How to debug Docker CLI api calls
---
So at [Giggl](https://giggl.app) we do quite some stuff with Docker and i wanted to do some more specific things with the [Docker Engine API](https://docs.docker.com/engine/api/v1.41/).

## The Problem
The Problem is that the CLI arguments passed to the `docker` tool are not 1:1 the same passed to the daemon api, and for things like the *seccomp* you actually read files before sending the content to the Docker daemon.

It would be good if i could see what the `docker` tool sends to the API, because while the Engine Api has a documentation, it is missing certain things or does not dive into detail to the degree i would need....well turns out i can do that using a little hack!

## The Solution
I have this tool called[dbg-server](https://github.com/liz3/dbg-server) which is a very simple http server to debug client, its made to be spawned in a terminal or be piped but basically it prints what it receives to the console, note that it will accept any method and path, it will show us which path the request was.

So first we need to start the tool, if you have node/npm thats easy using the npx utility provided with npm:
```sh
npx dbg-server -p 2020
```

Now we need a way to tell the docker tool to send to that server, basically we will make it think thats the docker daemon. since the returned response is empty, sometimes the docker tool might complain but we do not care since it send the request, though note that *dbg-server* can be passed the `-b` option followed by a string to return to the requester.

To tell docker to send its request to our client, we can use a ENV var it will check for, since this is a http server we need to use `tcp://` as the protocol, since we do not want to persist this change just execute it in a terminal window and we will have it for this session:
```sh
export DOCKER_HOST="tcp://0.0.0.0:2020"
```
And thats it!

Now in the terminal window/tab where we executed the `export` command we can use any docker command, lets try `docker ps`:
```sh
> docker ps
EOF
>
```
mmhhh that didn't return any data, but we expect that, lets check the console where the dbg-server is running
```sh
> npx dbg-server -p 2020
server ready on 2020
HEAD => /_ping[undefined]:


HEAD => /_ping[undefined]:


HEAD => /_ping[undefined]:


GET => /v1.24/containers/json[undefined]:

```
LOOK AT THAT, we can see the client tried to `GET /v1.24/containers/json`!

Lets try to run a container with a volume:
```sh
> docker run -v "/Users/liz3:/root" -ti ubuntu:latest
docker: EOF.
See 'docker run --help'.
```
Again `EOF`, again lets check the server:
```sh
POST => /v1.24/containers/create[application/json]:
  {
    "Hostname": "",
    "Domainname": "",
    "User": "",
  ...
    "Image": "ubuntu:latest",
    "Labels": {},
    "HostConfig": {
      "Binds": [
        "/Users/liz3/:/root"
      ],
      "ContainerIDFile": "",
      "LogConfig": {
        "Type": "",
        "Config": {}
      },
      "NetworkMode": "default",
      "PortBindings": {},
      "RestartPolicy": {
        "Name": "no",
        "MaximumRetryCount": 0
      },
      "AutoRemove": false,
  ...
     "ConsoleSize": [
        0,
        0
      ],
      "Isolation": "",
      "CpuShares": 0,
      "Memory": 0,
      "NanoCpus": 0,
      "CgroupParent": "",
      "ReadonlyPaths": null
    },
    "NetworkingConfig": {
      "EndpointsConfig": {}
    },
    "Platform": null
  }
```
Woah so thats how it does that!

## Conclusion
This helped me solve a real world problem in software and maybe will you too, it was definitely a useful thing. thats why i like sometimes say i do software engineering & hacking, because isnt that what hacking is? thinking outside the box?
...
