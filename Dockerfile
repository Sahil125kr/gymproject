FROM python:3.11.2-slim
RUN apt-get update
RUN apt-get install -y  gcc default-libmysqlclient-dev

# RUN pip install --upgrade pip
WORKDIR /gymwithai4-3-2023
COPY requirements.txt .

RUN pip install -r requirements.txt
COPY . .

CMD [ "python","app.py" ]