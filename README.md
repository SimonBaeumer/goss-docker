# goss

https://hub.docker.com/r/simonbaeumer/goss-docker/

## Supported tags
 
 - `latest`, `0.3.5`, `0.3.6`
 - `0.3.6-gitcrypt`, `0.3.5-gitcrypt`
 
## Environment

```
GOSS_FILES_STRATEGY
GOSS_VERSION
GOSS_PATH
CONTAINER_NAME
```

## Run image

`docker run -v /var/run/docker.sock:/var/run/docker.sock -e CONTAINER_NAME="alpine" simonbaeumer/goss`
