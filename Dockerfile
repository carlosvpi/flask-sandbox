FROM python:3.7-alpine
ADD ./src /src
WORKDIR /src
RUN pip install -r /src/requirements.txt
CMD ["python", "/src/myApp.py"]