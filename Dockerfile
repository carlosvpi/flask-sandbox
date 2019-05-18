FROM python:3.7-alpine
ADD ./src /src
WORKDIR /src
RUN pip install -r /src/requirements.txt
ENV FLASK_APP /src/myApp.py
CMD ["flask", "run", "--host=0.0.0.0"]