#!/bin/bash
echo "正在压缩, 请稍后..."
mv ./build ./server
tar -zcvf react-hooks-todolist.tar.gz ./server ./README.md ./build_production.sh

echo "上传中..."

sshpass -p ${password} scp -o StrictHostKeyChecking=no ./react-hooks-todolist.tar.gz  ${user}@${host}:/home/quzhanxiang/react-hooks-todolist/
sshpass -p ${password} ssh -o StrictHostKeyChecking=no ${user}@${host} "cd /home/quzhanxiang/react-hooks-todolist/ && tar -xzvf react-hooks-todolist.tar.gz && bash build_production.sh"