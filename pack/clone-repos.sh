#!/bin/dash
set -e

cwd=`dirname $0`

repos=`cat $cwd/repos.lst`

for i in ${repos}
do
  username=`echo $i | cut -d'/' -f4`
  reponame=`echo $i | cut -d'/' -f5 | cut -d'.' -f1`

  repo_path=${cwd}/${username}/start/${reponame}

  if [ -d ${repo_path} ]; then
    echo "already cloned: ${i}"
  else
    mkdir -p ${repo_path}
    git clone $i ${repo_path}
  fi

done

# vim: et sw=2 ts=2 sts=2 ff=unix :
