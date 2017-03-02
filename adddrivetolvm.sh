#!/bin/bash
# addnewdrivetolvm.sh
# 02/28/17-18:14
# adds a new drive to an lvm


#you will need some infomation
# 1: The name of the drive you are trying to add
#    $ sudo fdisk -l        OR  $ sudo ls /dev/s*
#
#
# 2: The name of the LVM you are trying to add the disk to.
#  $ sudo vgdisplay
#
# 3: The logical volume path
#  $ sudo lvdisplay
#


#required install
echo Installing required packages
echo .
echo .
echo .
echo .
#
sudo apt-get install system-config-lvm -y
#
echo .
echo .
echo .
echo .
echo .
#

#Get info
echo "Enter disk name: "
read NEWDISK
echo
echo "Enter Voulume group  that you are adding the disk too:  "
read VOLUMEGROUP
echo
echo "Enter Logical volume path   :"
read LOGICALVOLUMEPATH
echo


# convert new disk to physical volume
sudo pvcreate /dev/$NEWDISK
#
# add the new physical  volume to volume group
sudo vgextend $VOLUMEGROUP /dev/$NEWDISK
#
#Allocate the physical volume (the new disk) to a logical volume. Which is just extending the volume size by the size of the new disk
sudo lvextend -l +100%FREE $LOGICALVOLUMEPATH
#
#Resize the file system on the logical volume so that it now uses the space just given to it.
sudo resize2fs $LOGICALVOLUMEPATH
#
#
# run the this command to check and make sure everything worked
sudo df -h

##!/bin/bash
## addnewdrivetolvm.sh
## 02/28/17-18:14
## adds a new drive to an lvm
#
#
##you will need some infomation
## 1: The name of the drive you are trying to add
##    $ sudo fdisk -l        OR  $ sudo ls /dev/s*
##
##
## 2: The name of the LVM you are trying to add the disk to.
##  $ sudo vgdisplay
##
## 3: The logical volume path
##  $ sudo lvdisplay
##
#
#
##required install
#echo Installing required packages
#echo .
#echo .
#echo .
#echo .
##
#sudo apt-get install system-config-lvm -y
##
#echo .
#echo .
#echo .
#echo .
#echo .
##
#
##Get info
#echo "Enter disk name: "
#read NEWDISK
#echo
#echo "Enter Voulume group  that you are adding the disk too:  "
#read VOLUMEGROUP
#echo
#echo "Enter Logical volume path   :"
#read LOGICALVOLUMEPATH
#echo
#
#
## convert new disk to physical volume
#sudo pvcreate /dev/$NEWDISK
##
## add the new physical  volume to volume group
#sudo vgextend $VOLUMEGROUP /dev/$NEWDISK
##
##Allocate the physical volume (the new disk) to a logical volume. Which is just extending the volume size by the size of the new disk
#sudo lvextend -l +100%FREE $LOGICALVOLUMEPATH
##
##Resize the file system on the logical volume so that it now uses the space just given to it.
#sudo resize2fs $LOGICALVOLUMEPATH
##
##
## run the this command to check and make sure everything worked
#sudo df -h
#

