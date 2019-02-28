#!/bin/sh
cd;
mkdir Zoro-Test;
cd ~/Zoro-Test;
git clone https://github.com/ZoroChain/Zoro.git;
git clone https://github.com/ZoroChain/Zoro-Cli.git;
git clone https://github.com/ZoroChain/Zoro-Plugins.git;
git clone https://github.com/ZoroChain/CowboyLib.git;
git clone https://github.com/ZoroChain/Zoro-RpcHost.git;
echo "clone repositories success!";
cd ~/Zoro-Test/Zoro;
dotnet build --configuration Release;
cd ~/Zoro-Test/Zoro-Cli;
dotnet publish --configuration Release;
cd ~/Zoro-Test/Zoro-Plugins;
dotnet publish --configuration Release;
echo "publish success!";
cd ~/Zoro-Test/Zoro-Cli/zoro-cli/bin/Release/netcoreapp2.1/publish;
mkdir Plugins;
cp -rf ~/Zoro-Test/Zoro-Plugins/SimplePolicy/bin/Release/netstandard2.0/SimplePolicy.dll ~/Zoro-Test/Zoro-Cli/zoro-cli/bin/Release/netcoreapp2.1/publish/Plugins/;
cp -rf ~/Zoro-Test/Zoro-Plugins/SimplePolicy/bin/Release/netstandard2.0/SimplePolicy ~/Zoro-Test/Zoro-Cli/zoro-cli/bin/Release/netcoreapp2.1/publish/Plugins/;
echo "copy SimplePolicy success!";
cp -r ~/Zoro-Shell/configs/appchain.json ~/Zoro-Test/Zoro-Cli/zoro-cli/bin/Release/netcoreapp2.1/publish/;
cp -r ~/Zoro-Shell/configs/protocol.json  ~/Zoro-Test/Zoro-Cli/zoro-cli/bin/Release/netcoreapp2.1/publish/;
echo "copy appchain protocol.json success!";
cd  ~/Zoro-Test;
mkdir Node1;
cp -a ~/Zoro-Test/Zoro-Cli/zoro-cli/bin/Release/netcoreapp2.1/publish/*  ~/Zoro-Test/Node1/;
cp -r ~/Zoro-Shell/configs/config1.json ~/Zoro-Test/Node1/config.json;
cp -r ~/Zoro-Shell/wallets/wallet1.json ~/Zoro-Test/Node1/;
echo "create Node1 success!";
cp -rf ~/Zoro-Test/Zoro-Plugins/ApplicationLogs/bin/Release/netstandard2.0/ApplicationLogs.dll ~/Zoro-Test/Node1/Plugins/;
cp -rf ~/Zoro-Test/Zoro-Plugins/ApplicationLogs/bin/Release/netstandard2.0/ApplicationLogs ~/Zoro-Test/Node1/Plugins/;
echo "copy ApplicationLogs plugin success!";
cd  ~/Zoro-Test;
mkdir Node2;
cp -a ~/Zoro-Test/Zoro-Cli/zoro-cli/bin/Release/netcoreapp2.1/publish/*  ~/Zoro-Test/Node2/;
cp -r ~/Zoro-Shell/configs/config2.json ~/Zoro-Test/Node2/config.json;
cp -r ~/Zoro-Shell/wallets/wallet2.json ~/Zoro-Test/Node2/;
echo "create Node2 success!";
cd  ~/Zoro-Test;
mkdir Node3;
cp -a ~/Zoro-Test/Zoro-Cli/zoro-cli/bin/Release/netcoreapp2.1/publish/*  ~/Zoro-Test/Node3/;
cp -r ~/Zoro-Shell/configs/config3.json ~/Zoro-Test/Node3/config.json;
cp -r ~/Zoro-Shell/wallets/wallet3.json ~/Zoro-Test/Node3/;
echo "create Node3 success!";
cd  ~/Zoro-Test;
mkdir Node4;
cp -a ~/Zoro-Test/Zoro-Cli/zoro-cli/bin/Release/netcoreapp2.1/publish/*  ~/Zoro-Test/Node4/;
cp -r ~/Zoro-Shell/configs/config4.json ~/Zoro-Test/Node4/config.json;
cp -r ~/Zoro-Shell/wallets/wallet4.json ~/Zoro-Test/Node4/;
echo "create Node4 success!";