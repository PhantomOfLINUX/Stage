# s1011 cut
## 9-1
- cut -c 23 c1.txt
- 단답형
- 질문 : test 디렉토리의 c1.txt 파일의 각 행에서 23번째로 나오는 글자들을 연결하면 나오는 단어는?
- 답 : rocky
## 9-2
- cut -c 5- c2.txt > new_c2.txt
- 채점형
- 질문 : test 디렉토리의 c2.txt 파일의 각행의 첫번째로 나오는 “text”를 삭제하여 new_c2.txt파일을 만드시오.
- 답 : 채점파일실행
## 9-3
- cut -d “,” -f 1 d3.txt > d3_name.csv
- 채점형
- 질문 : test 디렉토리의 쉼표로 필드가 구분된 파일 d3.csv 에서 name에 해당하는 필드만 추출하여 d3_name.csv 파일을 만드시오. (d3_name.csv 파일에는 “name”이 가장 상단 행에 위치해야 합니다.)
- 답 : 채점파일실행
## 9-4
- cut -d “,” -f 2-3 d4.csv > d4_name.csv
- 채점형
- 질문 : test 디렉토리의 쉼표로 필드가 구분된 파일 d4.csv 에서 email 과 phone 에 해당하는 필드만 추출하여 d4_email_phone.csv 파일을 만드시오. (d4_email_phone.csv 파일에는 “email,phone”이 가장 상단 행에 위치해야 합니다.)
- 답 : 채점파일실행
## 9-5
- cut -s -d "," --output-delimiter=" : " -f 1- d5.csv > new_d5.csv
- 채점형
- 질문 : test 디렉토리의 파일 d5.csv의 필드 구분자를 쉼표에서 “ : “ (공백)콜론(공백)으로 바꾸고 공백인 행을 삭제한 파일 new_d5.csv 파일을 만드시오. (new_d5.csv 파일에는 “name : email : phone”이 가장 상단 행에 위치해야 합니다.)
- 답 : 채점 파일 실행



