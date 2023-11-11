#!/bin/bash

find . -maxdepth 1 -user 0 -exec ls -ld {} \;

