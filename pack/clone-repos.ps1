$current_dir = split-path $myInvocation.myCommand.path

$repos = (get-content $current_dir\repos.lst)

foreach ($i in $repos) {
  $username = (split-path -leaf (split-path $i))
  $reponame = (split-path -leaf $i).replace(".git", "")

  $repo_path = "$current_dir\$username\start\$reponame"

  if (test-path $repo_path) {
    write-host "already cloned: $i"
  } else {
    new-item -path $repo_path -type dir
    git clone $i $repo_path
  }
}

# vim: et sw=4 ts=4 sts=4 ff=dos :
