# export FLASK_APP=/work/app.py
# python3 -m flask run -h 169.254.0.13

from flask import Flask, render_template, request
import subprocess
import os


app = Flask(__name__)

@app.route('/')
def hello_world():
    return render_template("form.html")

@app.route('/toggle_led', methods = ['GET', 'POST'])
def toggle_led():
    if request.method == 'POST':
        subprocess.run(['/work/blink_led'])

    return render_template("form.html")

@app.route('/check_sw', methods = ['GET', 'POST'])
def check_sw():
    if request.method == 'POST':
        # global sw_on
        
        if sw_on :
            sw_on = False
        
        else:
            sw_on = True

        print("Switch State: ",sw_on)

    return render_template("form.html")