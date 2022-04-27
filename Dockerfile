FROM python:3.8-alpine
ARG USERNAME=ubuntu

# Create the user
RUN adduser -h /home/username -S -s /bin/bash $USERNAME
USER $USERNAME
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt
CMD ["python", "app.py"]