# Local NPM Registry

A Docker container designed to be a local cache for a developer machine or build server. All packages are stored inside the container.

## Aim

The aim is to improve the performance of downloading packages along with the ability to work offline.

Running an npm install will first check the local docker container, if the package doesn't exist then the registry will download the package from the npm registry, cache it inside the container and then install it into your project.  

The next time you run npm install, if nothing has changed, then everything will download from your local cache.

If you run NPM inside a container then you'll need the container's npm config to point to the container.

## Run

```
make
```

## Configure

If running via boot2docker, add the IP to your hosts file with the name b2d. Following this, run the commands to point npm to your local registry.

```
npm set registry http://b2d:4873
npm adduser --registry http://b2d:4873
```

Server is sinopia, the Docker image is based on [keyvanfatehi/sinopia](https://registry.hub.docker.com/u/keyvanfatehi/sinopia/)
