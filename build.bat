@echo off
set PATH=\
echo building nuget package
NuGet Pack structuremap.webapi2.nuspec -OutputDirectory packages
echo ----------------------------------------------
