#!/bin/sh
cd ~/Zoro-Test/Zoro;
git pull;
echo 'Zoro project updated!';
cd ~/Zoro-Test/Zoro;
dotnet publish -c Release;
cd;
cp -rf ~/Zoro-Test/Zoro-Cli/zoro-cli/bin/Release/netcoreapp2.1/publish/Zoro.dll ~/Zoro-Test/Node1/;
echo "update Node1 success!";
cp -rf ~/Zoro-Test/Zoro-Cli/zoro-cli/bin/Release/netcoreapp2.1/publish/Zoro.dll ~/Zoro-Test/Node2/;
echo "update Node2 success!";
cp -rf ~/Zoro-Test/Zoro-Cli/zoro-cli/bin/Release/netcoreapp2.1/publish/Zoro.dll ~/Zoro-Test/Node3/;
echo "update Node3 success!";
cp -rf ~/Zoro-Test/Zoro-Cli/zoro-cli/bin/Release/netcoreapp2.1/publish/Zoro.dll ~/Zoro-Test/Node4/;
echo "update Node4 success!"