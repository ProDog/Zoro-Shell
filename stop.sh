#!/bin/sh
screen_name1=$"node1"
cmd=$"exit";
screen -x -S $screen_name1 -p 0 -X stuff "$cmd" #exit
screen -X -S $screen_name1 quit #退出screen
echo "node1 stopped!";
screen_name2=$"node2"
screen -x -S $screen_name2 -p 0 -X stuff "$cmd" #exit
screen -X -S $screen_name2 quit #退出screen
echo "node2 stopped!";
screen_name3=$"node3"
screen -x -S $screen_name3 -p 0 -X stuff "$cmd" #exit
screen -X -S $screen_name3 quit #退出screen
echo "node3 stopped!";
screen_name4=$"node4"
screen -x -S $screen_name4 -p 0 -X stuff "$cmd" #exit
screen -X -S $screen_name4 quit #退出screen
echo "node4 stopped!";