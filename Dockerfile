FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /var/www/html/
ADD requirements /var/www/html/requirements
RUN pip install --upgrade pip
RUN pip3 install -r requirements.txt
ADD ./questAPI.conf /etc/apache2/sites-available/000-default.conf
EXPOSE 80 3500
CMD ["apache2ctl", "-D", "FOREGROUND"]