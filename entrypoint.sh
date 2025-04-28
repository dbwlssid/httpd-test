#!/bin/bash

# OpenShift에서 실행되는 임의 사용자에게 /opt/app-root/src/ 쓰기 권한 부여
# (컨테이너 사용자가 GID 0에 속한다고 가정하고 그룹 쓰기 권한 부여)
chmod g+w /opt/app-root/src/

# /opt/app-root/src/ 디렉토리에 index.html 파일을 생성 시도
echo "<h1>Welcome to $(shuf -n1 -e 'Meow world' 'Rrrr world')</h1>" > /opt/app-root/src/index.html

# 파일이 제대로 생성되었는지 확인 (선택 사항, 디버깅용)
if [ -f "/opt/app-root/src/index.html" ]; then
    echo "index.html 파일이 성공적으로 생성되었습니다."
else
    echo "오류: index.html 파일 생성에 실패했습니다."
fi

httpd -DFOREGROUND
