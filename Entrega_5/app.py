# export FLASK_APP=/work/app.py
# python3 -m flask run -h 169.254.0.13

from flask import Flask, render_template, request, Markup, flash
import subprocess
import os


app = Flask(__name__)
app.secret_key = b'_5#y2L"F4Q8z\n\xec]/'

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
       
        process = subprocess.Popen(['/work/read_switch'], stdout=subprocess.PIPE)
        switch_state = int(process.communicate()[0])

        if switch_state:
            print("Switch is on")
            
            message = Markup("<h3>Switch is On</h3>")
            flash(message)

        else:
            print("Switch is off")
            message = Markup("<h3>Switch is Off</h3>")
            flash(message)

    return render_template("form.html")