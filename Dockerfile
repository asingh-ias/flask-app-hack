FROM python:3.9-slim


ADD ./python_requirements.txt /
RUN python3 -m pip install -r python_requirements.txt

ADD ./prediction.py /
ADD ./server.py /
ADD ./campaign_data.csv /

CMD [ "python3", "-u", "./server.py" ]
