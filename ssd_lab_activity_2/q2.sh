#!/bin/bash

#awk -F "/" '{ if($2 == "usr") print $NF;}' test2.txt
awk -F "/" '{ if($2 == "usr") print $NF;}' /etc/shells
