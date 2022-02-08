FROM python:3.8-alpine
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt
COPY ../script.sh /var/script.sh
ENTRYPOINT ["/bin/sh", "/var/script.sh"]
CMD ["python", "app.py"]