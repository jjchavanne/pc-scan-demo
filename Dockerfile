FROM python:3.8-alpine
ARG USERNAME=test-user

# Create the user
RUN useradd -d /home/username -m -s /bin/bash $USERNAME \
USER $USERNAME
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt
CMD ["python", "app.py"]