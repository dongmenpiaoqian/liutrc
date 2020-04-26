#!/usr/bin/env bash

############################# jdk #########################################

#添加JDK的环境变量
export JAVA_8_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# export JAVA_11_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.5.jdk/Contents/Home
#默认JDK1.8
export JAVA_HOME=$JAVA_8_HOME

#alias命令动态切换JDK版本
# alias jdk8="export JAVA_HOME=$JAVA_8_HOME"
# alias jdk11="export JAVA_HOME=$JAVA_11_HOME"

######################################################################

# linux 平台 sdk 环境变量配置
# adb path
export PATH=$PATH:~/Android/Sdk/platform-tools
# android Home
export ANDROID_HOME=~/Android/Sdk
# 安卓相关
source "${HOME}/.liut/common/android.sh"


######################################################################


# 打开文件夹
alias open=nautilus


######################################################################

# 回收站文件夹
export TRASH_PATH=~/.local/share/Trash/files
source "${HOME}/.liut/common/rm.sh"


