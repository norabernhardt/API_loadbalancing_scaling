#!/bin/bash

yum install -y wget
yum install -y unzip
yum install -y python
yum install -y pip
systemctl start httpd
systemctl enable httpd

python3 -m pip install --upgrade 
python3 -m venv venv
. venv/bin/activate
pip3 install flask



export FLASK_APP=flaskr
export FLASK_ENV=development
flask run --host=0.0.0.0 --port=80