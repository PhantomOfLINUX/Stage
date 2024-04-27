#ws_pty.js가 copy되어 있는 이미지를 가져온다.
FROM polhub/ws-base:s1007

# 기존 환경 변수 및 사용자 설정을 유지할 수 있습니다.
ENV stage=s1007
ARG stage=s1007

# 사용자 추가
RUN useradd -ms /bin/bash $stage
RUN echo "$stage:0000" | chpasswd

RUN useradd -ms /bin/bash adam
RUN echo "adam:0000" | chpasswd

#접속시 출력 화면 파일 복사
COPY start.sh /home/$stage/
COPY stage_file /usr/stage_file
WORKDIR /home/$stage
RUN echo | cat start.sh >> .bashrc
RUN rm -rf start.sh

# 소유권 변경
RUN chown -R $stage /home/$stage
#Q2 환경 설계
RUN chown adam /usr/stage_file/dir3/dir31/dir313/eve
#Q3 환경 설계
RUN touch -t 195003151230.00 /usr/stage_file/dir1/dir11/dir112/olddlo
#Q4 환경 설계
RUN truncate -s 200M /usr/stage_file/dir3/dir33/dir333/big_and_huge

# 사용자 변경
USER $stage

RUN mkdir /home/$stage/test
WORKDIR /home/$stage/test

# Q1 환경 구성
RUN cp -rp /usr/stage_file/dir1 /home/$stage/test/dir1
RUN cp -rp /usr/stage_file/dir2 /home/$stage/test/dir2
RUN cp -rp /usr/stage_file/dir3 /home/$stage/test/dir3

WORKDIR /usr/agent

# 웹소켓 서버 실행 명령. 'ws_pty.js'는 웹소켓 서버의 메인 파일이라고 가정합니다.
CMD ["node", "app.js"]
