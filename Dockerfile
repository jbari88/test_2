FROM python:3
WORKDIR /usr/src/app

COPY . .
EXPOSE 8080
CMD ["python3", "/usr/src/app/test_2/manage.py", "migrate && python3", "/usr/src/app/test_2/manage.py", "runserver", "0.0.0.0:8080"]