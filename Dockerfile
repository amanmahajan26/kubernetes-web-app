FROM python:3.9.1
ENV FLASK_APP=app.py FLASK_ENV=development
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY app.py .
EXPOSE 5000
CMD ["run", "--host", "0.0.0.0"]
ENTRYPOINT ["flask"]