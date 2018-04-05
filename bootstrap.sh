#!/usr/bin/env bash

find . -name bootstrap.sh -exec bash -c "$PWD/{}" {} \;
