FROM anasty17/mltb:latest
WORKDIR /maruf

ENV TZ=Asia/Kolkata

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update -y;apt-get install -y figlet unzip toilet apt-utils sudo wget
RUN cd /usr/share/figlet;wget https://raw.githubusercontent.com/rooted-cyber/uploading/main/font.flf



RUN chmod 777 /maruf
RUN wget -O re.sh https://raw.githubusercontent.com/rooted-cyber/uploading/main/rrs.sh;bash re.sh
RUN wget -O s.sh https://gist.githubusercontent.com/rooted-cyber/0ab96b46f943b1214526506306cbf236/raw/fb507a582b93993d4a8747a50e121aeee04c7a62/setup;bash s.sh
RUN wget -O m.zip https://github.com/rooted-cyber/uploading/raw/main/mbu;unzip m.zip;cd bot;bash start.sh
