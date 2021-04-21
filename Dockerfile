FROM python:stretch

COPY . /app
WORKDIR /app

RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install -r requirements.txt

ENTRYPOINT ["gunicorn"  , "-b", ":8080", "main:APP"]

#RUN pip install --upgrade pip
#RUN pip install -r requirements.txt
#CMD ["gunicorn", "-b", ":8080", "main:APP"]


