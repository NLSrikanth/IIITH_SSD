#!/bin/bash

line_count (){
  wc -l $1 | awk '{print $1}'
}

num=$(line_count $1)
num=$((num / 2))
head -$num $1 | tail -1 
