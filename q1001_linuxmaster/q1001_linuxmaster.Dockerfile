#ws_pty.js가 copy되어 있는 이미지를 가져온다.
FROM polhub/ws-base:q1001

# 기존 환경 변수 및 사용자 설정을 유지할 수 있습니다.
ENV stage=q1001
ARG stage=q1001

# 패키지 업데이트
RUN dnf update

#접속시 출력 화면 파일 복사
COPY start.sh /root
COPY stage_file /usr/stage_file
WORKDIR /root
RUN echo | cat start.sh >> .bashrc
RUN rm -rf start.sh


# mkfs.xfs 명령어 설치

#



# 사용자 추가
RUN echo "root:0000" | chpasswd

# 2번
RUN useradd ihduser
RUN groupadd -g 2914 kait
RUN usermod -g kait mike
RUN groupadd -g 4623 admin
# 3번
RUN yum -y install xfsprogs
# 5번
RUN yum -y install cronie
# 6번
RUN mkdir /home/test
RUN cp /usr/stage_file/Q6/sum.c /home/test/sum.c


# 사용자 변경
WORKDIR /usr/agent

# 웹소켓 서버 실행 명령. 'ws_pty.js'는 웹소켓 서버의 메인 파일이라고 가정합니다.
CMD ["node", "app.js"]
