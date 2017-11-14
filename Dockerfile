FROM ubuntu

EXPOSE 8000

RUN apt-get -y update && \
    apt-get -y install speedtest-cli dos2unix
    
WORKDIR /speedtest

COPY capture.sh .
COPY cap5min.sh .
COPY start.sh .
COPY index.html .

RUN dos2unix capture.sh && \
    dos2unix cap5min.sh && \
    dos2unix start.sh && \ 
    chmod +x cap*.sh && \
    chmod +x start.sh

 CMD ["./start.sh"]       