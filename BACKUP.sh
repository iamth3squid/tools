#!/bin/bash
# BACKUP.sh
# 03/23/17-22:25
#back up to signal tar file in root dir


# tars and zips the whole file system and stores it in root as "backup.tar.gz
cd /
tar -cvpzf backup.tar.gz --exclude=backup.tar.gz --one-file-system /
