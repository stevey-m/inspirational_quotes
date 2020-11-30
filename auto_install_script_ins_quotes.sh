#!/bin/bash
dnf update -y
dnf install -y git python3
git clone https://github.com/stevey-m/inspirational_quotes
dnf install -y python3-pip
cd inspirational_quotes
python3 -m venv venv
source venv/bin/activate
pip3 install -r requirements.txt
python3 inspirational_quotes.py quotes_output.csv
