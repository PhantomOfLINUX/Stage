#ws_pty.js가 copy되어 있는 이미지를 가져온다.
FROM polhub/ws-base:s1018

# 기존 환경 변수 및 사용자 설정을 유지할 수 있습니다.
ENV stage=s1018
ARG stage=s1018

# 시스템 시간 변경을 위한 패키지 설치
RUN dnf update -y && dnf install -y \
    libpwquality \
    make \
    gcc \
    git \
    tzdata

# 시간 변경을 위한 libfaketime 설치
RUN git clone https://github.com/wolfcw/libfaketime.git && \
    cd libfaketime && \
    make install

# 시스템 시간을 2023-01-01로 변경 후 계정 생성
RUN ln -fs /usr/share/zoneinfo/UTC /etc/localtime && \
    LD_PRELOAD=/usr/local/lib/faketime/libfaketime.so.1 FAKETIME="2023-01-01 12:00:00" useradd -m user1 && \
    LD_PRELOAD=/usr/local/lib/faketime/libfaketime.so.1 FAKETIME="2023-01-01 12:00:00" useradd -m user2 && \
    LD_PRELOAD=/usr/local/lib/faketime/libfaketime.so.1 FAKETIME="2023-01-01 12:00:00" useradd -m user3 && \
    LD_PRELOAD=/usr/local/lib/faketime/libfaketime.so.1 FAKETIME="2023-01-01 12:00:00" useradd -m user4 && \
    LD_PRELOAD=/usr/local/lib/faketime/libfaketime.so.1 FAKETIME="2023-01-01 12:00:00" useradd -m user5


# 사용자 추가
RUN echo "root:0000" | chpasswd
# 2번
# RUN useradd user2
# 3번
# RUN useradd user3
# 4번
# RUN useradd user4
# 5번
# RUN useradd user5
# 6번
# RUN useradd user6


#접속시 출력 화면 파일 복사
COPY start.sh /root
WORKDIR /root
RUN echo | cat start.sh >> .bashrc
RUN rm -rf start.sh

# 사용자 변경
WORKDIR /usr/agent

# 웹소켓 서버 실행 명령. 'ws_pty.js'는 웹소켓 서버의 메인 파일이라고 가정합니다.
CMD ["node", "app.js"]
