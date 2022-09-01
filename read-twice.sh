#!/bin/bash

rm -f testfile

echo "$(date): start file creation"

dd if=/dev/zero of=testfile oflag=direct bs=1M count=100
echo "$(date): end file creation"

echo "$(date): sleep 3seconds"
sleep 3

echo "$(date): start 1st read"
cat testfile >/dev/null

echo "$(date): end 1st read"

echo "$(date): sleep 3seconds"
sleep 3


echo "$(date): start 2nd read"
cat testfile >/dev/null


echo "$(date): end 2nd read"

rm -f testfile
