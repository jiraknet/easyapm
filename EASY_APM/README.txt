#######################################################################

설치되는 모든 패키지는 오픈소스 입니다.
제작하신 분(또는 단체)가 별도로 있습니다.

#######################################################################


**** EASY_APM 주의사항 ****
- 서비스 운영중에 있는 서버에서 실행하지 마십시오! 문제가 발생할 수 있습니다.
- 절대로 해당 스크립트를 동일서버 상에서 여러번 실행시키지 마십시오!
- EASY_APM을 이용한 설치시 발생하는 문제는 사용자 본인에게 있음을 알려드립니다.


EASY_APM 디렉토리를 /usr/local/EASY_APM 으로 이동시킨 후 사용하시기 바랍니다.
mv EASY_APM /usr/local/EASY_APM



1. config.ini 수정
vi 등의 편집기를 이용해서 수정하세요

MANAGER_MAIL
default : ns@momopus.com
사용할 메일주소로 수정

HOST_NAME
default : ns1
서버의 호스트이름

DOMAIN_NAME
default : test.com
서버의 도메인

MANAGER_ACC
default : testuser
사용할 계정명 (현재는 의미가 없습니다)

SERVER_IP
default : 192.168.0.100
서버의 아이피주소



2. OS기본 패키지 설치

실행방법 : 
 - centos6 : ./BASIC_PACKAGE_CENTOS6.sh
 - centos7 : ./BASIC_PACKAGE_CENTOS7.sh
 - ubuntu-lts 12 or 14 : ./BASIC_PACKAGE_UBUNTU12.sh

리눅스 배포본에 따라
yum install
yum update
apt install
등의 명령어를 이용해서 centos 의 기본패키지를 설치합니다.
APM을 컴파일하기 위한 기본 환경구성 패키지 들입니다.

이 과정이 완료되지 않는다면 EASY_APM은 정상적으로 설치되지 않습니다.

- /etc/resolv.conf 파일을 수정하여 도메인 질의가 가능하도록 설정하십시오.
nameserver 8.8.8.8
nameserver 8.8.4.4
보통 이렇게 두줄을 넣어주시면 무난합니다.



3. APM 인스톨

실행방법 : ./Setup.exe

1번, 2번 항목을 완료하지 못했다면 절대로 실행시키지 마십시오.
정상적으로 설치 되지 않습니다.

실행시 APM 관련 패키지들이 설치(컴파일) 됩니다.
중간에 서버 전원을 OFF시키거나 명령을 중단시키지 마십시오.



4. EASY_APM 설치시 시스템에 영향을 미치는 부분

- /etc/ld.so.conf.d 
EASY_APM의 기본 설치경로은 /usr/local/XXXX 에 대한 라이브러리 참조를 위해
/etc/ld.so.conf.d/ 하단에 ns-ld-so-xXX.conf 파일을 생성합니다.


- /etc/rc.local 파일 변경
EASY_APM으로 설치한 APM패키지가 시스템 부팅시 자동으로 시작될 수 있도록 rc.local 파일을 수정하게 됩니다.

- logrotation 설정 추가
설치된 패키지에서 쌓이는 로그를 로테이션 할 수 있도록
/etc/logrotate.d/ 하단에 EASY_APM_LOG.sh 파일을 생성합니다.
