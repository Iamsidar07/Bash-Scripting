#!/bin/bash
showuptime(){
 local up=$(uptime -p | cut -c4-)
 local since=$(uptime -s)
  echo "
---------
This machine has been up for $up 
It has been running since $since
---------
"
}

showuptime
