#!/bin/bash

find $1 -perm -u+x ! -perm -o+r
