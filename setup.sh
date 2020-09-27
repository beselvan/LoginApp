#------------------------------------------------------------------------------------------
# Linux
yum update -y
yum upgrade -y
yum install -y git zip unzip tar net-tools ntsysv java-1.8.0-openjdk.x86_64 maven wget curl
#------------------------------------------------------------------------------------------

# Docker 

sudo yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y docker-ce docker-ce-cli
mkdir /etc/docker

cat > /etc/docker/daemon.json <<EOF
{
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "100m"
  },
  "storage-driver": "overlay2",
  "storage-opts": [
    "overlay2.override_kernel_check=true"
  ]
}
EOF

mkdir -p /etc/systemd/system/docker.service.d
systemctl daemon-reload
systemctl restart docker
systemctl enable docker

sudo curl -L "https://github.com/docker/compose/releases/download/1.27.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod 755 /usr/local/bin/docker-compose
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose


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
mvn -f ~/LoginApp/pom.xml package
docker-compose -f ~/LoginApp/docker-compose.yml  up -d

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
sudo setenforce 0
sudo sed -i 's/^SELINUX=enforcing$/SELINUX=permissive/' /etc/selinux/config
yum install -y kubeadm kubelet kubectl
sudo systemctl enable --now kubelet

#------------------------------------------------------------------------------------------
