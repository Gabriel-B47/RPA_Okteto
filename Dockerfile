FROM python:3.9-buster

RUN mkdir /rpa_project
RUN pip install -U pip

COPY ./requirements.txt ./rpa_project/requirements.txt
RUN pip install --no-compile  -r /rpa_project/requirements.txt

ENV PYTHONWARNINGS ignore
ENV PYTHONDONTWRITEBYTECODE=true
ENV PYTHONUNBUFFERED 1
ENV PATH="${PATH}:/root/.local/bin"
ENV PYTHONPATH=.

COPY . /rpa_project/

WORKDIR /rpa_project
CMD ["run_web.sh"]