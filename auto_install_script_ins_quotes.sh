#!/bin/bash
sudo dnf update -y
sudo dnf install -y git python3 python3-pip
git clone https://github.com/stevey-m/inspirational_quotes
cd inspirational_quotes
python3 -m venv venv
source venv/bin/activate
pip3 install --upgrade pip
pip3 install -r requirements.txt
echo
echo "--- Running Script ---"
echo
python3 inspirational_quotes.py quotes_output.csv
echo
echo "--- Top 3 lines of the output file ---"
echo
head -3 quotes_output.csv
echo
echo "--- Congratulations the script has finished successfully ---"
echo



