bash utils
==========

Holder to useful command in bash:

Tools
-----

- `zip-git-repo.sh` - simple bash script that creates zip archive from repository. Either from HEAD or from stash if there were any changes.

```bash
$ cd project-x
$ ls -a
.git
...
$ ./zip-git-repo.sh ../project-x.zip
```

Troubleshooting
---------------

Each file should have right to execute:

```bash
$ chmod +x ./zip-git-repo.sh
```

