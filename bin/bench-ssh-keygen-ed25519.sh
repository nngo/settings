#!/usr/bin/env bash

type=ed25519
tempfile=$(mktemp --tmpdir=/dev/shm)
rm -f $tempfile

echo "Running 10 iterations to get average seconds..."
#for r in 16 32 64 99; do
for r in 16 32; do
  echo -n "ssh-keygen -t $type -a $r takes on average ";
  for i in {1..10}; do
    ssh-keygen -q -a $r -t $type -f $tempfile -N testPassword;
    time ssh-keygen -q -a $r -f $tempfile -p -P testPassword -N newPassword;
    rm -v $tempfile{.pub,};
  done |& grep real | awk -F m '{print $2}' | tr -d s | awk '{sum+=$1} END{print sum/NR}';
done

echo "Total elapsed seconds: $SECONDS"
times

