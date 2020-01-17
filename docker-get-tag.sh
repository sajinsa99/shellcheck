#!/usr/local/bin/bash


docker images | grep shellcheck | awk '{print $3}'
