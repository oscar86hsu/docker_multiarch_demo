FROM python

COPY src/demo.py ./

CMD [ "python", "./demo.py" ]