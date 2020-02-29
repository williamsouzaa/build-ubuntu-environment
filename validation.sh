#!/bin/bash

validation(){
    case $1 in
        n | N)
            echo "false";;
        y | Y)
            echo "true";;
        *)
            echo "false";;
    esac
}