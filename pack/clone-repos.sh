#!/bin/sh
set -e

cwd=`dirname $0`

repos=`cat $cwd/repos.lst`

for i in ${repos}
do
  username=`basename \`dirname $i\``
  reponame=`basename $i | rev | cut -d '.' -f 2- | rev`

  repo_path=${cwd}/${username}/start/${reponame}

  if [ -d ${repo_path} ]; then
    echo "already cloned: ${i}"
  else
    echo mkdir -p ${repo_path}
    echo git clone $i ${repo_path}
  fi

done

# vim: et sw=2 ts=2 sts=2 ff=unix :
