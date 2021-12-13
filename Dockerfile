# Image base
FROM python:3.8-slim

# Label docker image
LABEL version="0.1"
LABEL maintainer="Aviad Cohen"
LABEL release-date="2021-09-15"

# env varialbe
ENV USER myuser
ENV APP_HOME /code/app
ENV PATH="/home/$USER/.local/bin:${PATH}"

# Working Directory
WORKDIR $APP_HOME

# copy app files
COPY ./app $APP_HOME

# set permissions to Working Directory
RUN useradd -ms /bin/bash $USER && chown $USER:$USER $APP_HOME -R && chmod 764 $APP_HOME -R

# add User to run application
USER $USER

# install requirements
RUN pip install --disable-pip-version-check -r ./requirements.txt

# expose Port
EXPOSE 80

# start process
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
