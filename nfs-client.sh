SERVER_IP=$1
NFS_DIR=$2
MOUNT_VOLUME=$3

yum install nfs-utils nfs4-acl-tools -y
showmount -e $SERVER_IP
mkdir -p $MOUNT_VOLUME
mount -t nfs ${SERVER_IP}:${NFS_DIR} /root/volume
echo "${SERVER_IP}:${NFS_DIR}     $MOUNT_VOLUME  nfs     defaults 0 0" >> /etc/fstab
