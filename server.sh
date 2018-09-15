apt-get update #리눅스 업데이트
apt-get install zip #zip설치
apt-get install make autoconf automake libtool m4 wget gzip bzip2 bison g++ #서버에 필요한 도구 다운
apt-get install language-pack-ko #한국어설치
wget -O locale "https://github.com/zmdk0913/register/blob/master/locale?raw=true" #한글화다운
mv -f /root/locale /etc/default/locale #한글화덮어쓰기
wget -O environment "https://github.com/zmdk0913/register/raw/master/environment?raw=true" #한글화다운2
mv -f /root/environment /etc/environment #한글화덮어쓰기2
wget https://github.com/zmdk0913/new/archive/master.zip #서버팩다운
unzip master.zip
mv /root/new-master/pmmp.tar.gzaa /root/pmmp.tar.gzaa
mv /root/new-master/pmmp.tar.gzab /root/pmmp.tar.gzab
mv /root/new-master/pmmp.tar.gzac /root/pmmp.tar.gzac
mv /root/new-master/pmmp.tar.gzad /root/pmmp.tar.gzad
rm -r new-master
rm master.zip
cat pmmp.tar.gz* | tar xfz  - #pmmp 압축 풀기
rm pmmp.tar.gzaa
rm pmmp.tar.gzab
rm pmmp.tar.gzac
rm pmmp.tar.gzad
wget -O PocketMine-MP.phar "https://github.com/zmdk0913/register/blob/master/PocketMine-MP.phar?raw=true" #최신 phar 다운
wget -O start.sh "https://github.com/zmdk0913/register/blob/master/start.sh?raw=true" #재부팅 가능한 배치파일 다운
wget -O bin.zip "https://github.com/zmdk0913/register/blob/master/bin.zip?raw=true" #bin다운
cd pm #pm으로이동
mv -f /root/PocketMine-MP.phar /root/pm/PocketMine-MP.phar #phar 덮어쓰기
mv -f /root/bin.zip /root/pm/bin.zip
mv -f /root/start.sh /root/pm/start.sh
chmod 777 start.sh
rm -r bin
unzip bin -d bin
chmod 777 start.sh #권한부여
chmod 777 bin/php7/bin/php #권한부여
echo "pmmp 서버 설치 완료 screen -S mc, cd pm, ./st* 로 서버를 여세요!"
rm ser*
