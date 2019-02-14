FROM python:3

RUN apt update -y && \
    apt upgrade -y && \
    apt install -y python3-tk ghostscript && \
    pip install excalibur-py && \
    excalibur initdb

COPY excalibur.cfg /root/excalibur/

CMD ["excalibur", "webserver"]
EXPOSE 80
