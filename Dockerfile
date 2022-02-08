FROM python:3.8-alpine
RUN mkdir /app
ADD . /app
COPY ./script.sh /app/var/script.sh
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["/bin/sh", "/var/script.sh"]
CMD ["python", "app.py"]