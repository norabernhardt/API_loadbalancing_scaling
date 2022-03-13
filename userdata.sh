#!/bin/bash

sudo yum install -y wget
sudo yum install -y unzip
sudo yum install -y python
sudo yum install -y pip
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd
pip3 install boto3
python3 -m pip install --upgrade 
python3 -m venv venv
. venv/bin/activate
pip3 install flask



export FLASK_APP=flaskr
export FLASK_ENV=development
flask run --host=0.0.0.0 