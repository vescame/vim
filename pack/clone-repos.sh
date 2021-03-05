#!/bin/dash
set -e

repos="https://github.com/tpope/vim-fugitive
https://github.com/dense-analysis/ale.git"

current_dir=`dirname $0`

for i in ${repos}
do
  username=`echo $i | cut -d'/' -f4`
  reponame=`echo $i | cut -d'/' -f5 | cut -d'.' -f1`

  repo_path=${current_dir}/${username}/start/${reponame}

  if [ -d ${repo_path} ]; then
    echo "already cloned: ${i}"
  else
    mkdir -p ${repo_path}
    git clone $i ${repo_path}
  fi

done

# vim: et sw=2 ts=2 sts=2 ff=unix :
