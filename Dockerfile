FROM python:alpine

COPY src/demo.py ./

CMD [ "python", "./demo.py" ]