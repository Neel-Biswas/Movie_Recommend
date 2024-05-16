FROM python:3

ADD app.py /
COPY app.py .
COPY movies.pkl .
COPY similarity.pkl .


COPY requirements.txt /tmp/requirements.txt
RUN python3 -m pip install --root-user-action=ignore -r /tmp/requirements.txt
EXPOSE 8080
#RUN pip3 install -r requirements.txt
CMD [ "python", "./app.py" ]
