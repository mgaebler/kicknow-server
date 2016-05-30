FROM mgaebler/kicknow-backend-base:latest
MAINTAINER Marian Gaebler <marian.gaebler@gmail.com>

# Install dev dependencies
RUN apt-get update && \
  apt-get install -qy python-dev

# Activate virtual env and install wheel support
RUN . /appenv/bin/activate && \
  pip install wheel --upgrade

# PIP environment variables
ENV WHEELHOUSE=/wheelhouse
ENV PIP_WHEEL_DIR=/wheelhouse
ENV PIP_FIND_LINKS=/wheelhouse
ENV XDG_CACHE_HOME=/cache

# OUTPUT: Build artifacts (Wheels) are output here
VOLUME /wheelhouse

# OUTPUT: Build cache
VOLUME /build

# OUTPUT: Test reports are output here
VOLUME /reports

# # Add test entrypoint script
COPY scripts/test.sh /usr/local/bin/test.sh
RUN chmod +x /usr/local/bin/test.sh
#
ENTRYPOINT ["test.sh"]
# CMD ["/bin/bash"]
CMD ["./manage.py", "test", "--noinput"]


# Add application source
COPY django /application
WORKDIR /application
