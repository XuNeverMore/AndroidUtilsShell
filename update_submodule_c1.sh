#!/usr/bin/env bash

libs=(
"CMLib:app-result"
"CMLogic:app-china"
"CMMediationChina:f-express"
"CMPush:app-rel"
"CMScene:app-china"
"CMWallpaper:app-rel"
)

for lib in ${libs[*]}
do
  info="${lib}"
  n="${info%:*}"
  title="---------------------$n---------------------"
  echo -e "\e[0;32m${title}\e[0m"
  name=`echo $n`

  b="${info#*:}"
  branch=`echo $b`
  cd "$name"
  pwd
  git branch
  git checkout "$branch"
  git pull
  cd ..
  echo ""
  echo ""

done

msg="^_^ Candymobi submodule update finished. ^_^"
echo -e "\e[0;35m${msg}\e[0m"
time1=$(date)
echo -e "\e[0;36m${time1}\e[0m"
read -p ""