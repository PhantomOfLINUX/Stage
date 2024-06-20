# q1001 (compose 없음)
## 1
- mkdir /etc/skel/www
- 채점형
- 질문 : 사용자 추가 시에 www 디렉토리를 기본적으로 제공하도록 설정하세요.
- 답 : 채점파일실행
## 2
- usermod -aG admin ihduser
- 채점형
- 질문 : 현재 ihduser 사용자의 주 그룹이 kait인 상태입니다. ihduser 사용자를 주 그룹 변경없이 추가로 admin 그룹에 포함시키세요.
- 답 : 채점파일실행
## 3
- 
- 단답형
- 질문 : /dev/sdb1 장치의 파일 시스템을 XFS로 생성하는 명령어를 작성하세요. (특별한 옵션이나 인자 값 없이 명령어만 사용해야합니다.)
- 답 : mkfs.xfs /dev/sdb1
## 4
- 
- 단답형
- 질문 : 파일 시스템이 생성된 /dev/sdb1의 UUID 값을 확인하는 명령어를 작성하세요. (특별한 옵션이나 인자 값 없이 명령어만 사용해야합니다.)
- 답 : blkid /dev/sdb1
## 5
- crontab -e
- */10 * * * 0 /etc/heartbeat.sh
- 채점형
- 질문 : /etc/heartbeat.sh 명령을 매주 일요일에 10분 주기로 실행하도록 하세요.
- 답 : 채점파일실행
## 6
- gcc -c sum.c
- 채점형
- 질문 : /home/test 디렉토리에서 sum.c 소스파일을 컴파일하여 오브젝트파일을 생성하세요
- 답 : 채점파일실행
## 7
- gcc -o sum sum.o
- 채점형
- 질문 : /home/test 디렉토리에서 sum.o 오브젝트 파일을 이용하여 sum 이라는 실행파일을 생성하세요
- 답 : 채점파일실행
## 8
- tar cf obj.tar *.o
- 채점형
- 질문 : /home/test/srcs 디렉토리에서 tar 명령어를 활용하여 현재 디렉토리에 있는 오브젝트파일만을 묶어 obj.tar 파일을 /home/test/srcs 위치에 생성하세요
- 답 : 채점파일실행
## 9
- 
- 단답형
- 질문 : 모듈의 alias, alias symbol, blacklist를 비롯하여 다양한 정보를 출력하는 명령어를 작성하세요.
- 답 : modprobe -c

## 10
- 
- 단답형
- 질문 : 다음은 2개의 하드디스크를 이용해서 LVM을 구성하는 과정입니다. 빈칸에 들어갈 2개의 파티션을 물리적 볼륨을 구성하는 명령어를 작성하세요.
- 답 : pvcreate
## 11
- 
- 단답형
- 질문 : 논리적 볼륨을 생성하는 명령어는?
- 답 : lvcreate
## 12
- vim /etc/rsyslog.conf
- *.emerg *
- (or) *.emerg :omusrmsg:*
- 채점형
- 질문 : 다음은 시스템 로그 관련 설정을 하는 과정입니다. 모든 서비스(facility)에 대해 가장 최고 수준(priority)의 위험한 상황이 발생한 경우에는 모든 사용자의 터미널로 관련 로그를 전송하도록 설정하세요.
- 답 : 채점파일실행
## 13
- vi /etc/rsyslog.d/ssh.conf
- authpriv.* /var/log/ssh.log (입력)
- 채점형
- 질문 : 다음은 시스템 로그 관련 설정을 하는 과정이다. ssh와 같은 인증 관련 로그는 /var/log/ssh.log 파일에 기록하도록 설정하세요. (/etc/rsyslog.d/ssh.conf 에 작성하세요)
- 답 : 채점파일실행
## 14
- vim /etc/logrotate.d/auth-failures
- /var/log/btmp {
- weekly
- create 0600 root utmp
- minsize 1M
- rotate 5
- }
- 단답형
- 질문 : 시스템에 접속하는 사용자가 너무 많아서 특정 로그 파일의 로테이션 관련 설정을 변경하려고 한다. 로그인에 실패한 사용자 정보가 저장되는 로그 파일은 일주일 단위로 로테이션을 실행한다. 단 파일의 크기가 1MB에 도달하면 그 이전이라도 로테이션을 실행한다. 생성되는 파일을 소유자는 root, 소유 그룹은 utmp로 지정하며, root 사용자만 읽기 및 쓰기가 가능하도록 설정하세요. (/etc/logrotate.d/auth-failures 파일에 작성하세요)
- 답 : 채점파일실행
## 15
- 
- 단답형
- 질문 : 외부로부터의 접근을 일시적으로 허가하기 위해서 SELinux 설정을 확인하고 제어하려한다. 현재 SELinux 설정 상태를 확인하려면 어떤 명령어를 입력해야하는가?
- 답 : getenforce
## 16
-  
- 단답형
- 질문 : 외부로부터의 접근을 일시적으로 허가하기 위해서 SELinux 설정을 확인하고 제어하려한다. SELinux를 비활성화상태로 만드려면 어떤 명령어를 입력해야하는가?
- 답 : Setenforce 0
## 17
- rsync -avz root@192.168.5.13:/home/ (rsync와 -avz만 빈칸을 뚫어놓고 이후 root@구문은 문제에서 제시))
- 단답형
- 질문 : IP 주소가 192.168.5.13 번인 원격지 호스트의 /home 디렉토리를 로컬시스템의 디렉토리로 복사하는 명령어를 작성하세오. (root 권한으로 접속하여 허가권, 타임스탬프 등을 그대로 유지하면서 백업을 진행하세오. 또한 작업 진행 상황을 표시하고, 전송시에 압축기법을 사용하세요.)(첫번째 빈칸에는 관련 명령어만 작성해주시고 두번째 빈칸에는 첫번째 빈칸에 사용한 명령어의 옵션을 기입하세요.)
- 답 : rsync, -avz
## 18
- vim /etc/samba/smb.conf
- [web]
-    comment = HTML Directory
-    path = /usr/local/apache/html
-    valid users = ihduser kaituser
- 채점형
- 질문 : 다음은 삼바 서버를 설정하는 과정입니다. smb.conf 파일에 아래 조건에 맞는 내용을 작성하세요.
- 윈도우 호스트에서 접근할 때, 보이는 폴더의 이름을 web 으로 지정하세요.
- 디렉토리에 대한 설명은 “HTML Directory”로 설정하세요.
- 공유 디렉토리 경로는 /usr/local/apache/html 로 설정하세요.
- 접근이 가능한 사용자는 ihduser, kaituser로 설정하세요.
- 답 : 채점파일실행






