#!/bin/sh
cd ~/Zoro-Test/Node1;
screen_name1=$"node1"
screen -dmS $screen_name1
cmd1=$"dotnet Zoro-Cli.dll --rpc --log";
screen -x -S $screen_name1 -p 0 -X stuff "$cmd1" #创建screen
screen -x -S $screen_name1 -p 0 -X stuff $'\n' #回车
<<EOF
send "\01" #模拟输入 ctrl-a
send "d" #模拟输入d  ctrl-a+d是挂起screen
EOF
echo "node1 started!";

cd ~/Zoro-Test/Node2;
screen_name2=$"node2"
screen -dmS $screen_name2
cmd2=$"dotnet Zoro-Cli.dll";
screen -x -S $screen_name2 -p 0 -X stuff "$cmd2"
screen -x -S $screen_name2 -p 0 -X stuff $'\n'
<<EOF
send "\01"
send "d"
EOF
echo "node2 started!";

cd ~/Zoro-Test/Node3;
screen_name3=$"node3"
screen -dmS $screen_name3
cmd3=$"dotnet Zoro-Cli.dll";
screen -x -S $screen_name3 -p 0 -X stuff "$cmd3"
screen -x -S $screen_name3 -p 0 -X stuff $'\n'
<<EOF
send "\01"
send "d"
EOF
echo "node3 started!";

cd ~/Zoro-Test/Node4;
screen_name4=$"node4"
screen -dmS $screen_name4
cmd4=$"dotnet Zoro-Cli.dll";
screen -x -S $screen_name4 -p 0 -X stuff "$cmd4"
screen -x -S $screen_name4 -p 0 -X stuff $'\n'
<<EOF
send "\01"
send "d"
EOF
echo "node4 started!";