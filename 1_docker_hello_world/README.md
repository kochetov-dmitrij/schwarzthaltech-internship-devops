# Dockerfile hello_world

### Optimize Dockerfile (make it more lightweight)
```
Used alpine golang:1.18.0-alpine3.15 because alpine versions are lightweight.

```

### Do multistage build
```

Split into 2 stages: build and prod. Build compiles /hello_world, and prod copies the compiled file from build stage and executes it.

```

### Build, run and open in browser
```
sudo docker build . -t urbeingwatched8/helloworld
sudo  docker run --publish 8060:8060 urbeingwatched8/helloworld
```

### Tag it with :v1.0.0 and :latest and push the image to your DockerHub or Github Packages repository
```
https://hub.docker.com/r/urbeingwatched8/helloworld1

```
