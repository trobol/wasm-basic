@echo off

echo Clearing repo
@RD /S /Q ".git"

echo Initializing new repo
git init

code .