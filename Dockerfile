FROM python:3

RUN apt update -y &&\
    apt upgrade -y &&\
    apt install -y python3-tk ghostscript &&\
    pip install excalibur-py &&\
    excalibur initdb

CMD ["excalibur", "webserver"]
EXPOSE 5000
