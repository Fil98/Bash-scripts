#!/bin/bash
used=`df -hl / | awk {'print $4'} | grep "%"`
used=${used/\%/}
if [ $used -gt 90 ];
then
echo "Attention! Available space less than 10%. Used space = $used"% | mail -s "DISK ALERT" <a href="mailto:user@host.com">user@host.com</a>
fi
