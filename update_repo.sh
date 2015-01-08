#!/usr/bin/env bash

# keep local edit and pull new repo
git stash
git pull
git stash pop
