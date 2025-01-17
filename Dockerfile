FROM python:3.9-slim
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
RUN pip3 install --upgrade paho-mqtt
COPY . .
EXPOSE 6000
CMD ["python3", "app.py"]