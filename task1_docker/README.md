# Task 1 - Dockerfile hello_world

### 1. Optimize Dockerfile (make it more lightweight)
```
To optimize it, it means we have to make the dockerfile as lightweight as possible and the benefits to this is to reduce the attack area and improve the security of the overall application. The methods implemented involves:

- Using a specific base image that matches the requirements of the application in production
- when using the COPY command, we make sure we copy the necessary files for the building and running of the application
- Combining the RUN command instead of using multiple RUN commands, becasue these commands add an extra layer to the application
- Finally using a multi-stage build

```

### 2. Do a multistage build
```
Type here what was done...

```

### 3. Build, run and open in browser
```
Type here the command you used to build and run the container...

```

### 4. Tag it with :v1.0.0 and :latest and push the image to your DockerHub or Github Packages repository
```
Type here the public image URL

```
