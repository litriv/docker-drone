# Pull from base Ubuntu image
FROM ubuntu

# Do system updates and install dependencies
RUN apt-get update
RUN apt-get -y upgrade
RUN sudo apt-get -y install git wget
RUN apt-get clean

# Download Drone.io
RUN wget http://downloads.drone.io/master/drone.deb
RUN dpkg -i drone.deb

# Expose the Drone.io port
EXPOSE 8080

ENV DRONE_SERVER_PORT 0.0.0.0:8080
ENV DRONE_DATABASE_DATASOURCE /var/lib/drone/drone.sqlite

# Define our GitHub oAuth keys below
ENV DRONE_GITHUB_CLIENT f2dd4854a7a513dbe87a
ENV DRONE_GITHUB_SECRET cfbc5789c41071a7b780cdd443c3189e0ae861fe

# The command we'll be running when the container starts
CMD /usr/local/bin/droned
