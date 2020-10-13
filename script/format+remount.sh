umount ~/mnt_ssd
mkfs.ext4 /dev/sdb1 -F
mount -t ext4 -o data=ordered /dev/sdb1 ~/mnt_ssd
chown jeong:jeong ~/mnt_ssd
df -T
