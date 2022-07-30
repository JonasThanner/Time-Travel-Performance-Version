from flask import Flask, render_template
from flask_navigation import Navigation

app = Flask(__name__)
nav = Navigation(app)

nav.Bar('top', [
    nav.Item('Home', 'home'),
    nav.Item('Storry', 'storry'),
    nav.Item('Instalation', 'instalation'),
    nav.Item('Tipps', 'tipps')
])


@app.route("/")
def home():
    return render_template("home.html")


@app.route("/storry")
def storry():
    return render_template("storry.html")


@app.route("/installation")
def instalation():
    return render_template("instalation.html")


@app.route("/tipps")
def tipps():
    pass
