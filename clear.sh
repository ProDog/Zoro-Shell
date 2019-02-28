#!/bin/sh
cd ~/Zoro-Test/Node1;
rm -rf Chain_* Index_* Logs AppChain ApplicationLogs rpchost_logs error.log;
echo "clear Node1 success!";
cd ~/Zoro-Test/Node2;
rm -rf Chain_* Index_* Logs AppChain ApplicationLogs rpchost_logs error.log;
echo "clear Node2 success!";
cd ~/Zoro-Test/Node3;
rm -rf Chain_* Index_* Logs AppChain ApplicationLogs rpchost_logs error.log;
echo "clear Node3 success!";
cd ~/Zoro-Test/Node4;
rm -rf Chain_* Index_* Logs AppChain ApplicationLogs rpchost_logs error.log;
echo "clear Node4 success!"
