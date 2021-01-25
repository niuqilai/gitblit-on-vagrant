mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup`date '+%Y%m%d_%H%M%S'`                                                    
curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
yum clean all
yum makecache
yum update


yum install -y java-1.8.0-openjdk-devel.x86_64
#https://github.com/gitblit/gitblit/releases/download/v1.9.1/gitblit-1.9.1.war
curl https://github.com/gitblit/gitblit/releases/download/v1.9.1/gitblit-1.9.1.war -o gitblit-1.9.1.war

java -jar gitblit-1.9.1.war



