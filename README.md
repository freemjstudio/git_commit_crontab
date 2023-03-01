# git_commit_crontab
  
    
### 당신의 1일 1커밋... crontab으로 자동화해보는 건 어떤가요?! 😺. 
scheduler/git_scheduler.sh : 커밋자동화 쉘스크립트 파일

### ubuntu / MacOS

crontab -e 명령어로 시스템의 Crontab 을 스케줄링 할 수 있다. 

MacOS 기준 crontab field 는 다음과 같다. 

#### 분 시 일 월 요일 


따라서 원하는 주기로 설정하고, 실행시킬 쉘 파일이 있는 경로를 써주면 된다. 

예시) 매일 아침 8시 0분에 GitHub commit & push 자동화 

 0 8 * * * /Users/test_user/git_commit_crontab/scheduler/git_scheduler.sh
 
 
 
### 주의 ! 인터넷 없는 상태에서는 작동안함 
해결방법
1. 클라우드 리소스 사용하기 (24시간 돌아가는 서버 필요함)
2. 컴퓨터를 하루에 한번 켜준다 단 인터넷 연결되어야 함

-> GCP f1-micro(vCPU 1개, 0.6GB 메모리) 서버를 사용
