FROM ubuntu
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y build-essential
RUN apt-get install -y gdb
COPY as_code.s /home/as_code.s
COPY c_code.c /home/c_code.c
