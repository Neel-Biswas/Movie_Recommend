FROM python:3

ADD app.py /

RUN pip3 install -r requirements.txt
CMD [ "python", "./app.py" ]
