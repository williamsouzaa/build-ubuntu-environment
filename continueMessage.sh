#!/bin/bash
function continueMessage() {
    if [ -z $1 ]; then
        echo -e "\nContinue script..."
    fi
    
    if [ $1 ]; then
        echo -e "\nNext step >>> $1"
    fi
}