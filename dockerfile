FROM jupyter/datascience-notebook

# root 권한으로 서버 실행
USER root

# OS 업데이트
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install wget -y 
RUN apt-get install gnupg2 -y
RUN rm -rf /var/lib/apt/lists/*

# 필요한 python 라이브러리들 설치
RUN pip install requests beautifulsoup4 html5lib selenium

# CHROME
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/goodle.list'
RUN apt update -y
RUN apt-get install -y google-chrome-stable

# CHROME_DRIVER
RUN apt-get install -yqq unzip
RUN apt-get install -y curl
RUN wget -O /tmp/chromedriver.zip http://chromedriver.storage.googleapis.com/`curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE`/chromedriver_linux64.zip
RUN unzip /tmp/chromedriver.zip chromedriver -d /usr/local/bin/
ENV DISPLAY=:99