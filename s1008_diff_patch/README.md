# s1008 diff patch
## 8-1
- diff A1 A2
- 단답형
- 질문 : test 디렉토리의 파일 A1, A2를 비교했을 때, 각각 몇번째 줄에서 차이가 나는지 말하시오.
- 답 : A : 3 , B : 3
## 8-2
- diff -u A1 A2 > A1toA2.patch
- 채점형
- 질문 : diff의 -u 옵션을 사용하여 test 디렉토리의 파일 A1에서 A2로의 패치파일 A1toA2.patch 를 생성하시오.
- 답 : 채점파일실행
## 8-3
- patch A1 A1toA2.patch
- 채점형
- 질문 : test 디렉토리의 파일 A1에 패치파일 A1toA2.patch를 패치시키시오.
- 답 : 채점파일실행
## 8-4
- patch -b A1 A1toA2.patch
- 채점형
- 질문 : test 디렉토리의 파일 A1에 패치파일 A1toA2.patch를 패치시키시오. 이때 A1.orig라는 이름의 백업파일도 생성하시오.
- 답 : 채점파일실행
## 8-5
- patch -R A1 A1toA2.patch
- 채점형
- 질문 : test 디렉토리의 파일 A1에 패치파일 A1toA2.patch를 거꾸로 패치시키시오.
- 답 : 채점 파일 실행
## 8-6
- patch --verbose A1 A1toA2.patch > patch.log
- 채점형
- 질문 : test 디렉토리의 파일 A1에 패치파일 A1toA2.patch를 패치하고 --verbose옵션을 사용하여 패치로그 patch.log 를 생성하시오.
- 답 : 채점 파일 실행



