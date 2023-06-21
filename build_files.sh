#!/bin/bash
for line in $(cat requirements.txt)
do
  pip install $line
done
python3.9 manage.py collectstatic --noinput