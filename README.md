# STAGE 설계

stage 폴더별로 해당 stage의 설계에 대한 README.md 참고

## image_tag.config.json 사용법

```json
{
    "rebuild": true,
    "target_build": true,
    "target": {
        "matrix": ["s1001_ls", "s1002_cd_pwd"]
    }
}
```

## `"rebuild"` : 스테이지 빌드 설정

> `"rebuild": true` : 스테이지 빌드 함  
> `"rebuild": false` : 스테이지 빌드 안 함

## `target_build` : 부분 스테이지 빌드 설정

부분 빌드를 진행하기 위해서도 `rebuild: true`는 설정되어 있어야한다.

> `"target_build": true` : 부분적인 스테이지만 빌드

`target.matrix`의 배열원소로 정확하게 디렉토리명(도커파일명)을 입력해야한다.  
디렉토리명과 .dockerfile 의 명은 동일하다는 것이 전제이다.

## 예시

### 전체 스테이지를 모두 빌드 하고 싶은경우 (agent의 util 코드 변경 등)

```json
{
    "rebuild": true,
    "target_build": false,
    "target": {
        "matrix": [] // 상관없음
    }
}
```

### 부분적인 스테이지 몇 개만 빌드하고 싶은경우 (stage 추가 등)

"s1001_ls", "s1002_cd_pwd"만 재빌드 하는 예시

```json
{
    "rebuild": true,
    "target_build": true,
    "target": {
        "matrix": ["s1001_ls", "s1002_cd_pwd"]
    }
}
```

### 빌드 없이 코드만 main에 올리는 경우

```json
{
    "rebuild": false,
    "target_build": true, // 상관없음
    "target": {
        "matrix": ["s1001_ls", "s1002_cd_pwd"] // 상관없음
    }
}
```
