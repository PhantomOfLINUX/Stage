# s1012 tar
## 12-1
- tar -cvf docs.tar -C documents .
- 채점형
- 질문 : test 디렉토리에서 documents 디렉토리 안에 있는 모든 파일을 docs.tar라는 아카이브 파일로 만드세요. (docs.tar 파일은 test디렉토리안에 존재해야 합니다.)
- 답 : 채점파일실행
## 12-2
- tar -rvf docs.tar update.log
- 채점형
- 질문 : test디렉토리의 이미 생성된 docs.tar 아카이브에 update.log 파일을 추가하세요.
- 답 : 채점파일실행
## 12-3
- tar -xvf docs.tar ./summary.txt
- 채점형
- 질문 : test디렉토리의 docs.tar 아카이브에서 summary.txt 파일만 추출하세요.
- 답 : 채점파일실행
## 12-4
- tar -tvf docs.tar
- 단답형
- 질문 : test디렉토리의 docs.tar 아카이브에 포함된 모든 파일 크기의 합은 몇 바이트인가?
- 답 : 53
## 12-5
- tar -xvf docs.tar -C check --wildcards '*.txt'
- 채점형
- 질문 : test디렉토리의 docs.tar 아카이브에서 확장자가 .txt인 모든 파일을 추출하여 check 디렉토리에 저장하시오.
- 답 : 채점 파일 실행
## 12-6
- tar -cvf media.tar -C images . -C ../videos .
- 채점형
- 질문 : test디렉토리의 images와 videos 디렉토리를 포함하여 media.tar 아카이브를 생성하시오.
- 답 : 채점 파일 실행



