#ws_pty.js가 copy되어 있는 이미지를 가져온다.
FROM polhub/ws-base:s1019

# 기존 환경 변수 및 사용자 설정을 유지할 수 있습니다.
ENV stage=s1019
ARG stage=s1019

# 사용자 추가
RUN echo "root:0000" | chpasswd
# 1번
RUN useradd user1
RUN chage -M 30 user1
RUN chage -I 10 user1
# 2번
RUN useradd john


#접속시 출력 화면 파일 복사
COPY start.sh /root
WORKDIR /root
RUN echo | cat start.sh >> .bashrc
RUN rm -rf start.sh

# 사용자 변경
WORKDIR /usr/agent

# 웹소켓 서버 실행 명령. 'ws_pty.js'는 웹소켓 서버의 메인 파일이라고 가정합니다.
CMD ["node", "app.js"]
