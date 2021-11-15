#!/bin/bash
grep "username:" /etc/passwd >/dev/null
if [ $? -ne 0 ]; then
echo 'No username found'
fi
