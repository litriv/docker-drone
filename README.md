For setting up a continuous integration server, on a server with Docker installed and configured, run the 'run' script after having done:
docker build -t ac_drone .

The .drone.yml file in the "web" repo needs to be updated to run a bash command when the build and tests succeed.  The command need to be implemented and should launch a Docker container using an image of a deployment server that can be built by following instructions in the "deployment" repo.  The container can be launched, running the appropriate "run" command as documented in the deployment server README.  The run command will look something like "run ca ac-ca-qa" for deploying the latest code.

