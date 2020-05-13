#------------------------------------------------------------------------------------------
# Linux
yum update -y
yum upgrade -y
yum install -y git zip unzip tar net-tools ntsysv java-1.8.0-openjdk.x86_64 maven wget
#------------------------------------------------------------------------------------------
# Docker 

wget https://download.docker.com/linux/centos/docker-ce.repo -P /etc/yum.repos.d/
chmod 644 /etc/yum.repos.d/docker-ce.repo
groupadd docker
yum install -y docker docker-compose.noarch
systemctl[kubernetes]
name=Kubernetes
baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg start docker
systemctl enable docker

#------------------------------------------------------------------------------------------
# Jenkins

wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key

yum install -y jenkins
usermod -aG docker jenkins
systemctl start jenkins
systemctl enable jenkins

cat /var/lib/jenkins/secrets/initialAdminPassword

#------------------------------------------------------------------------------------------
# Application


git clone https://github.com/beselvan/LoginApp.git
mvn -f /home/mycloud245/LoginApp/pom.xml package
docker-compose -f /home/mycloud245/LoginApp/docker-compose.yml  up -d

#------------------------------------------------------------------------------------------
# Kubernetes

cat >> /etc/yum.repos.d/kubernetes.repo << EOF
[kubernetes]
name=Kubernetes
baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOF

yum install -y kubeadm kubelet kubectl


#------------------------------------------------------------------------------------------


