FROM python:3.9-slim
COPY zhuohan.py .
CMD ["python", "app.py"]