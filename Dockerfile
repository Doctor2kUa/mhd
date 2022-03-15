FROM python:latest
#RUN apk update && \
#	apk add --update curl && \
#	rm -rf /var/cache/apk/*
#RUN curl https://github.com/MHProDev/MHDDoS.git
RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*
#RUN wget https://github.com/MHProDev/MHDDoS.git

#RUN wget https://github.com/MHProDev/MHDDoS/archive/refs/tags/Version2.tar.gz && tar xvzf Version2.tar.gz && rm Version2.tar.gz && cd MHDDoS-Version2/ && \
#	pip install -r requirements.txt && rm -rf /tmp/pip*
#CMD ["python3"]
#WORKDIR /MHDDoS-Version2
#ENTRYPOINT [""]
RUN git clone https://github.com/MHProDev/MHDDoS.git && cd MHDDoS && pip install -r requirements.txt
COPY tmp.post /
COPY tools /usr/sbin/
