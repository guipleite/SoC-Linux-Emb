# export FLASK_APP=/work/app.py
# python3 -m flask run -h 169.254.0.13

from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'
