mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup`date '+%Y%m%d_%H%M%S'`                                                    
curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
yum clean all
yum makecache
yum update

mkdir /usr/local/src/gitblit

cp /home/vagrant/resources/gitblit-1.9.1.war /usr/local/src/gitblit/ 
cp /home/vagrant/resources/jetty-runner-9.4.0.M1.jar /usr/local/src/gitblit/

tee /usr/local/src/gitblit/start.sh << EOF
cd /usr/local/src/gitblit
java -jar jetty-runner-9.4.0.M1.jar --path /jetty gitblit-1.9.1.war &
EOF
chmod 744 /usr/local/src/gitblit/start.sh

yum install -y java-1.8.0-openjdk-devel.x86_64
#https://github.com/gitblit/gitblit/releases/download/v1.9.1/gitblit-1.9.1.war
#curl https://github.com/gitblit/gitblit/releases/download/v1.9.1/gitblit-1.9.1.war -o gitblit-1.9.1.war

/usr/local/src/gitblit/start.sh


