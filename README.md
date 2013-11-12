bash utils
==========

Holder with useful commands in bash.

Tools
-----

- `zip-git-repo.sh` - simple script that create zip archive from repository. Either from HEAD or from stash if there were any changes.

```bash
$ cd project-x # enter to project with GIT repository
$ ./zip-git-repo.sh ../project-x.zip
```

Troubleshooting
---------------

Each file should have right to execute:

```bash
$ chmod +x ./zip-git-repo.sh # adding permission to executre for all
```

