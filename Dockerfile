FROM anasty17/mltb:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

RUN apt-get update && apt-get upgrade -y
RUN apt-get -qq install mediainfo -y

COPY man.txt .
RUN pip3 install --no-cache-dir -r man.txt

COPY . .

CMD ["bash", "start.sh"]
