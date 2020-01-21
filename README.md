# Docker Multi-Architecture Build Demo

This is a demo of docker buildx. It simply pull python image from docker hub and run a script to print out the system arch type of the current machine.

demo.py<br>
```python
import os

print("This is a " + os.uname().machine + " Machine!\n")
```

Dockerfile<br>
```docker
FROM python

COPY src/demo.py ./

CMD [ "python", "./demo.py" ]
```
