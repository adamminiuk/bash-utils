bash utils
==========

Holder to useful command in bash:

- `zip-git-repo.sh` - Simple bash script that creates zip archive from repository. Either from HEAD or from stash if there were any changes.

```bash
$ cd project-x
$ ls -a
.git
...
$ ./zip-git-repo.sh ../project-x.zip
```
