FROM python

RUN mkdir /usr/src/myapp

WORKDIR /usr/src/myapp


COPY requirements.txt /usr/src/myapp/requirements.txt
COPY helloworld.py /usr/src/myapp/helloworld.py

WORKDIR /usr/src/myapp

RUN pip install -r requirements.txt

CMD python helloworld.py
