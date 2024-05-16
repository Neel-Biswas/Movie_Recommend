FROM python:3

ADD app.py /
COPY requirements.txt /tmp/requirements.txt
RUN python3 -m pip install --root-user-action=ignore
RUN python3 -m pip install -r /tmp/requirements.txt
#RUN pip3 install -r requirements.txt
CMD [ "python", "./app.py" ]
