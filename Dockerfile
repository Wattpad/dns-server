FROM python:2.7
ENV PYTHONUNBUFFERED 1
ENV DEBUG 1
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /code/
EXPOSE "10053/tcp"
EXPOSE "10053/udp"
CMD python manage.py dns_server
