#ws_pty.js가 copy되어 있는 이미지를 가져온다.
FROM polhub/ws-base:s1016

# 기존 환경 변수 및 사용자 설정을 유지할 수 있습니다.
ENV stage=s1016
ARG stage=s1016

# 사용자 추가
RUN echo "root:0000" | chpasswd
# 1번
RUN useradd john
# 2번
RUN useradd jane
# 3번
RUN useradd mike
RUN groupadd -g 2914 mmm
RUN usermod -g mmm mike
RUN groupadd -g 4623 developers
# 4번
RUN useradd alex
# 5번
RUN useradd susan
# 6번
RUN useradd bob
# 7번
RUN useradd emma
RUN groupadd -g 6242 wat


#접속시 출력 화면 파일 복사
COPY start.sh /root
WORKDIR /root
RUN echo | cat start.sh >> .bashrc
RUN rm -rf start.sh

# 사용자 변경
WORKDIR /usr/agent

# 웹소켓 서버 실행 명령. 'ws_pty.js'는 웹소켓 서버의 메인 파일이라고 가정합니다.
CMD ["node", "app.js"]
