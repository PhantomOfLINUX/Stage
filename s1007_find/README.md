# s1007 touch mkdir rm
## 7-1
- find . -type f -name "*.linux"
- 단답형
- 질문 : test 디렉토리와 test 디렉토리의 하위 디렉토리에서 .linux 확장자를 가진 모든 파일의 이름은? (답 예시: apple.linux)
- 답 : OS.linux
## 7-2
- find / -type f -user adam
- 단답형
- 질문 : 시스템 전체를 탐색해 사용자 'adam'이 소유한 파일의 이름을 구하시오?
- 답 : eve
## 7-3
- find . -type f -mtime +3500
- 단답형
- 질문 : test 디렉토리와 test 디렉토리의 하위 디렉토리에서 수정된 지 10년이 넘은 파일의 이름은?
- 답 : olddlo
## 7-4
- find . -type f -size +100M 
- 단답형
- 질문 : test 디렉토리와 test 디렉토리의 하위 디렉토리에서 100MB 이상의 파일들을 찾으세요.
- 답 : big_and_huge
## 7-5
- find . -type f -name "*.tmp" -delete
- 채점형
- 질문 : test 디렉토리와 test 디렉토리의 하위 디렉토리에서 .tmp 확장자를 가진 모든 파일을 찾아 삭제하세요. 
- 답 : 채점 파일 실행

