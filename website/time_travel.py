from flask import Flask, render_template
from flask_navigation import Navigation

app = Flask(__name__, )
nav = Navigation(app)


nav.Bar('top', [
    nav.Item('Home', 'home'),
    nav.Item('Story', 'story')
])


@app.route("/")
def home():
    return render_template("home.html")


@app.route("/story")
def story():
    return render_template("story.html")
