# s1011 grep
## 11-1
- grep "error" A1.txt > A1_error.txt
- 단답형
- 질문 : test디렉토리의 data.txt 파일에서 "error"라는 단어가 포함된 모든 라인을 찾아 그 결과를 error.txt에 저장하시오.
- 답 : rocky
## 11-2
- grep -i "warning" A2.txt > A2_warning.txt
- 채점형
- 질문 : test디렉토리의 A2.txt 파일에서 "Warning"이라는 단어를 대소문자 구분 없이 찾아 그 결과를 A2_warning.txt에 저장하시오.
- 답 : 채점파일실행
## 11-3
- grep -n "Failed" A3.txt > A3_Failed.txt
- 채점형
- 질문 : test디렉토리의 A3.txt 파일에서 "Failed"라는 단어가 포함된 모든 라인을 찾고, 각 라인의 행 번호도 함께 출력한 결과를 A3_Failed.txt에 저장하시오.
- 답 : 채점파일실행
## 11-4
- grep -c "2023" A4.txt
- 단답형
- 질문 : test디렉토리의 A4.txt 파일에서 "2023"라는 숫자가 몇 번 나오는지 세세요.
- 답 : 11
## 11-5
- grep -w "the" A5.txt > A5_the.txt
- 채점형
- 질문 : test디렉토리의 A5.txt파일에서 "the"라는 단어가 정확히 "the"로만 사용된 모든 경우를 찾아 그 결과를 A5_the.txt 에 저장하시오
- 답 : 채점 파일 실행
## 11-6
- grep "localhost" *.txt > localhost.txt
- 채점형
- 질문 : test디렉토리에서 grep을 사용하여 현재 디렉토리의 모든 .txt 파일에서 "localhost"라는 단어를 검색하여 나온 결과를 localhost.txt에 저장하시오.
- 답 : 채점 파일 실행
## 11-7
- grep -v "theme" A7.txt > A7_no_theme.txt
- 채점형
- 질문 : test디렉토리의 A7.txt 파일에서 "theme"라는 단어를 포함하지 않는 모든 라인을 찾아 그 결과를 A7_no_theme.txt에 저장하시오.
- 답 : 채점 파일 실행
## 11-8
- grep -E "error|warning" A8.txt > A8_error_warning.txt
- 채점형
- 질문 : test디렉토리의 A8.txt 파일에서 "error" 또는 "warning"이라는 단어를 포함하는 라인을 찾고 그 결과를 A8_error_warning.txt에 저장하시오.
- 답 : 채점 파일 실행
## 11-9
- grep "^Important:" A9.txt > A9_Important.txt
- 채점형
- 질문 : test디렉토리의 A9.txt 파일에서 각 라인의 시작 부분에 "Important:"이라는 단어가 있는 라인을 찾고 그 결과를 A9_Important.txt에 저장하시오.
- 답 : 채점 파일 실행



