#!/usr/bin/python
from flask import Flask, request, send_from_directory
import subprocess

app = Flask(__name__)

@app.route("/", methods=["GET"])
def index():
    return send_from_directory("www", "index.html")

@app.route("/command", methods=["GET"])
def command():
    return_code = subprocess.call("./%s" % request.args.get("cmd"), shell=True)
    return "", 200 if return_code == 0 else 500

try:
    app.run(host="0.0.0.0", port=80, debug=False)
except KeyboardInterrupt:
    pass



