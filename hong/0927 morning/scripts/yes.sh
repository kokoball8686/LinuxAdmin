#!/bin/bash

# Function defi
YES() {
    echo
    echo "YES | boxes -d dragon"
}



NO() {
    echo
    echo "NO | boxes -d critical"
}




FAIL() {
    echo
    echo "[  FAIL ] 돌아가~~~~"
    exit 2
}




# Vari defi



# Main Func




echo -n "선택하십쇼~(yes/no): "
read CHOICE

case $CHOICE in
    y|Y|yes|YES|Yes) YES  ;;
    n|N|no|NO|No)    NO   ;;
    *)               FAIL ;;
esac