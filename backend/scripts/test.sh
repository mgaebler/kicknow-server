#!/bin/bash
. /appenv/bin/activate

# Install app test requirements
pip install -r requirements_test.txt

# Run test.sh arguments
exec $@
