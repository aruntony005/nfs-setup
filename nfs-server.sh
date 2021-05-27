CLIENT_IP=$1
NFS_DIR=$2
yum install nfs-utils -y
systemctl start nfs-server
mkdir -p $NFS_DIR
if [ $CLIENT_IP == 'all' ]
then
  echo "$NFS_DIR *(rw,sync,root_squash)" >> /etc/exports
else
  echo "$NFS_DIR ${CLIENT_IP}(rw,sync,root_squash)" >> /etc/exports
fi
exportfs -arv
