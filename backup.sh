#!/bin/bash
echo "Backup lancé à $(date)" >> backup.log
tar -czf backup.tar.gz /home/$USER/projet

