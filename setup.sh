#!/bin/bash

#如果远程访问的话要直接添加服务器的外网ip地址以及docker暴露的接口
mongo localhost:30001 <<EOF
 rs.initiate()
 rs.add("mongo-secondary-1:27017")
 rs.add("mongo-secondary-2:27017")
EOF