FROM ubuntu:trusty
MAINTAINER Marian Gaebler <marian.gaebler@gmail.com>

# Prevent dpkg errors
ENV TERM=xterm-265color

# Install Python runtime
RUN apt-get update -qy \
  && apt-get install -qy software-properties-common \
  && apt-add-repository -y ppa:ansible/ansible \
  && apt-get update -qy \
  && apt-get install -qy ansible

# Add volume for ansible playbooks
VOLUME /ansible
WORKDIR /ansilble

# entrypoint
ENTRYPOINT ["ansible-playbook"]
CMD ["site.yml"]
