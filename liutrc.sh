#!/usr/bin/env bash

# 当前系统 Darwin（mac）
if [ -z $uname ]; then
  uname=$(uname)
fi

# mingw 特殊处理
if [ $(echo "$uname" | grep 'MINGW') ]; then
  uname='MINGW'
fi
readonly uname
export uname

export LIUT_RC_HOME="${HOME}/.liut"

# 系统相关
case ${uname} in
"Darwin")
  # shellcheck source=.liut/sys/darwin.sh
  source "${LIUT_RC_HOME}/sys/darwin.sh"
  ;;
"Linux")
  # shellcheck source=.liut/sys/linux.sh
  source "${LIUT_RC_HOME}/sys/linux.sh"
  ;;
"MINGW")
  # shellcheck source=.liut/sys/mingw.sh
  source "${LIUT_RC_HOME}/sys/mingw.sh"
  ;;
esac

# 通用
# shellcheck source=.liut/common/commin_func.sh
source "${LIUT_RC_HOME}/common/commin_func.sh"

# 通用(个人私有)
# shellcheck source=.liut/common/private.sh
source "${LIUT_RC_HOME}/common/private.sh"
