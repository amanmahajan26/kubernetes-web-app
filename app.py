from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
	return "Well, hello there!"

@app.route("/healthcheck")
def healthcheck():
    return "OK"

if __name__ == '__main__':
	app.run(debug=True)