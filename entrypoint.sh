#!/bin/sh

set -e

# `ACTIONS_STEP_DEBUG` is an environment variable that enables "step" debug
# logging.
# Following the same pattern, if the aforementioned variable is set to "true",
# we output the commands we are executing.
# For more information, take a look at https://git.io/JeEUu

ls -la

WORKING_DIRECTORY="$1"

echo "CI env: $CI"

yarn cache dir

echo "Changing current working directory to : $WORKING_DIRECTORY"
cd $WORKING_DIRECTORY;

ls -la
echo "Running: yarn test"

sh -c "yarn test"
