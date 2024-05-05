# STAGE 설계

stage 폴더별로 해당 stage의 설계에 대한 README.md 참고

## image_tag.config.json 사용법

```json
{
    "rebuild": true,
    "target": ["s1001"]
}
```

### `"rebuild"` : 전체 스테이지 재빌드 설정

> `"rebuild": true` : 전체 스테이지 재빌드  
> `"rebuild": false` : 전체 스테이지 재빌드 안 함
