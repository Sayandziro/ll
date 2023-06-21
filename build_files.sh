#!/bin/bash
for line in $(cat requirements.txt)
do
  pip install $line --no-binary=:all:
done
python3.9 manage.py collectstatic --noinput