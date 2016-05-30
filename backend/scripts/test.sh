#!/bin/bash
. /appenv/bin/activate

# Download requirements to build cache
pip download -d /build -r requirements/test.txt --no-input

# Install app test requirements
pip install --no-index -f /build -r requirements/test.txt

# Run test.sh arguments
exec $@
