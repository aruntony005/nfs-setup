# nfs setup
## Setup nfs server and clients.

Execute the following in the nfs server
```
yum install git wget -y
git clone https://github.com/aruntony005/nfs-setup.git

CLIENT_IP='10.128.0.20'
NFS_DIR='/mnt/nfs'
systemctl stop firewalld
sh nfs-setup/nfs-server.sh $CLIENT_IP $NFS_DIR
```

Execute the following in the nfs client 
```
yum install git wget -y
git clone https://github.com/aruntony005/nfs-setup.git

NFS_DIR='/mnt/nfs'
SERVER_IP='10.128.0.21'
MOUNT_VOLUME='/root/volume'
systemctl stop firewalld
sh nfs-setup/nfs-client.sh $SERVER_IP $NFS_DIR $MOUNT_VOLUME
```
