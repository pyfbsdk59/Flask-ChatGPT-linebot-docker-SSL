FROM tiangolo/uwsgi-nginx-flask:python3.8
	
COPY ./app /app

RUN pip install --upgrade pip
#RUN pip install openapi
RUN pip install -r requirements.txt
RUN pip freeze > newreqs.txt
#COPY ./app/uwsgi.ini /uwsgi.ini
#CMD ["uwsgi", "--ini", "/uwsgi.ini"]