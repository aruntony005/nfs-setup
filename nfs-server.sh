CLIENT_IP=$1
NFS_DIR=$2
yum install nfs-utils -y
systemctl start nfs-server
mkdir -p $NFS_DIR
echo "$NFS_DIR ${CLIENT_IP}(rw,sync,root_squash)" >> /etc/exports
exportfs -arv
