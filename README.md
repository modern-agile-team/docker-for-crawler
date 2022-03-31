# docker-for-crawler
파이썬과 jupyter notebook으로 크롤러를 개발하기 위한 기본 개발 환경 셋업

## Before
> 개발환경 세팅을 위한 사전 준비.
* [도커](https://docs.docker.com/get-docker/)와 [도커 컴포즈](https://docs.docker.com/compose/install/)를 설치합니다.
   > **Mac**과 **Windows**는 **Docker Desktop**을 설치했다면 **Docker Compose**도 함께 설치되므로 별도 설치할 필요 없습니다.
   1. 도커를 설치하려면 [여기](https://docs.docker.com/get-docker/)를 클릭해주세요.
   2. 도커 컴포즈를 설치하려면 [여기](https://docs.docker.com/compose/install/)를 클릭해주세요.

## Run
1. 저장소를 복제합니다.
   ```bash
   # 저장소 복제
   $ git clone https://github.com/modern-agile-team/docker-for-crawler

   # 저장소로 이동
   $ cd docker-for-crawler
   ```
2. docker-compose를 이용하여 jupyter 서버를 오픈합니다.
   ```bash
   $ docker-compose up
   ```
3. 오픈된 서버에 접속합니다.
   > http://localhost:8888
4. jupyter 서버에서 발급해준 토큰을 입력하여 로그인합니다.
   1. 토큰을 복사합니다.
      > 토큰은 ```docker-compose up``` 명령을 수행한 터미널 제일 하단에 출력됩니다.
      <img width="1282" src="https://user-images.githubusercontent.com/56839474/161074512-5f9671f8-b428-40e0-a193-8d0638d69e18.png">
    2. 복사한 토큰을 로그인 창에 붙여넣은 후 로그인합니다.
      <img width="592" alt="스크린샷 2022-03-31 오후 11 09 49" src="https://user-images.githubusercontent.com/56839474/161075355-163ce0c0-bd6e-43e8-93bc-1ad139fd56e1.png">

## Logined View
> 모든 작업 파일은 [work](https://github.com/modern-agile-team/docker-for-crawler/tree/master/work) 디렉터리에 영구적으로 저장됩니다.
<img width="1440" alt="스크린샷 2022-03-31 오후 11 11 34" src="https://user-images.githubusercontent.com/56839474/161075645-8ea93daa-ab8b-4d57-94e0-4b46fdb6943f.png">

## Exit or Termination
> jupyter notebook 종료하기
* 도커 컨테이너를 종료합니다.
  * ```Ctrl + C```를 입력해도 동작중인 컨테이너가 종료됩니다. 다만, 종료된 상태로 메모리에 남게되므로 완전히 삭제시키고자 할 때는 아래 명령어를 사용합니다.
  ```bash
  $ docker-compose down
  ```
