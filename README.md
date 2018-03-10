# evrnt

### Development Environment

#### bash

- In `.profile` add 
```
alias dkc='docker-compose'
dkd() {
  docker run --rm -it --name `echo $(pwd)|tr -d /`-dev --mount ${DKD_MOUNT:-type=bind,source=$(pwd),target=/app} --hostname $1 $1
}
```

- re-open shell

```
export DKD_MOUNT="type=bind,source=$(pwd),target=/app --mount type=bind,source=/Users/colby/Notebooks/2018/e/evernote-sdk-golang,target=/sdk"
dkc build
dkd evrnt-app
```

- These steps will build a docker image based on the directives in `docker-compose.yml` and `Dockerfile` called `evrnt-app`. This image can then be run as a container and makes the `$(PWD)` or current working directory to `/app` in the container when it is running.
- You now have a docker isolated development environment.
- Uses /sdk as a location for github.com/colbygk/evernote-sdk-golang
