Push commands for flask-app docker image:
- docker build -t flask-app .
- docker tag flask-app amanmahajan26/flask-app
- docker push amanmahajan26/flask-app

This docker image is a basic flask application running on port 5000 and exposing the following endpoints:
- / => "Well, hello there!"
- /healthcheck => "OK"