REM 关闭回显
@echo off

set "year=%date:~0,4%"
set "month=%date:~5,2%"
set "day=%date:~8,2%"
set "hour_ten=%time:~0,1%"
set "hour_one=%time:~1,1%"
set "minute=%time:~3,2%"
set "second=%time:~6,2%"


::拼接需要的时间数据
if "%hour_ten%" == " " (
    set xianzai=%year%-%month%-%day%  0%hour_one%:%minute%:%second%

) else (

    set xianzai=%year%-%month%-%day%  %hour_ten%%hour_one%:%minute%:%second%
)

::显示现在时间
echo 现在时间是 %xianzai%




REM 获取电脑名称
set name=%computername%

REM 电脑名称为pc... 打开 d:\..,否则，打开e.. 
if %name%==ABC2020 (


    ::将当前目录下修改的所有代码从工作区添加到暂存区 . 代表当前目录
    git add .

    :: 缓存内容添加至本地仓库
    git commit -m "%xianzai%"

    ::本地版本库推送到远程仓库
    git push

) 




::等待用户操作
pause
