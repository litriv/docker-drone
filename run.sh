#! /bin/bash -

# TODO check if ac_drone image exists and if not, build it:
# docker build -t ac_drone .

touch drone.sqlite
docker run -d --name="drone-ci" \
    -p 8080:8080 \
    -v /var/lib/drone/ \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /home/core/alphacrowd_ci/drone.sqlite:/var/lib/drone/drone.sqlite \
    ac_drone
