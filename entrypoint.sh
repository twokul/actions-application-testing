#!/bin/sh

set -e

echo "Current directory: " $(pwd)

cd $GITHUB_WORKSPACE;

ls -la

echo "Current directory: " $(pwd)

cd $SUB_FOLDER;

echo "Current directory: " $(pwd)

echo "Running: ember test --test-port=$TEST_PORT --filter=$FILTER"

sh -c 'ember test --test-port="$TEST_PORT" --filter="$FILTER"'
