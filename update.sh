wget -O PocketMine-MP.phar "https://github.com/zmdk0913/register/blob/master/PocketMine-MP.phar?raw=true"
wget -O bin.zip "https://github.com/zmdk0913/register/blob/master/bin.zip?raw=true"
wget -O start.sh "https://github.com/zmdk0913/register/blob/master/start.sh?raw=true" #재부팅 가능한 배치파일 다운
cd pm
mv -f /root/PocketMine-MP.phar /root/pm/PocketMine-MP.phar
mv -f /root/bin.zip /root/pm/bin.zip
mv -f /root/start.sh /root/pm/start.sh
chmod 777 start.sh
rm -r bin
unzip bin -d bin
chmod 777 bin/php7/bin/php
echo 서버를 1.6으로 정상적으로 업그레이드 한것 같습니다.