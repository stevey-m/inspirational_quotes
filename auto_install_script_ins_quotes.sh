#!/bin/bash
yum update -y
yum install git -y
yum install python3 -y
git clone https://github.com/satyajitsa-code/inspquote_ws
yum install python3-pip -y
cd inspquote_ws
python3 -m venv venv
source venv/bin/activate
pip3 install -r requirements.txt
python3 iq_ws.py iq_ws.csv
