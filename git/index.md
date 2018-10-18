# Git Cheat Sheet


## Git Basics

### Adding Changes to the repository

After creating or modifying files, add them to the index with the following command :
```bash
    #  git add [files]
```

The index contains all the files that will be commited

### Commiting files

Commit the files which have been added to the index with the following :
```bash
    #  git commit -m [Commit message]
```

The '-a' flag can be used to automatically add all the versioned files which have been modified.

### Pushing the changes

To send the local changes to the remote server, use the push method as follows: 

```bash
    #  git push
```

## Git Branching

How to manipulate branches

### Displaying existing branches
```bash
    #  git branch
```

### Creating a branch

Use the following command to create a branch :
```bash
    # git branch [branch name]
```
This only creates the branch. It does not switch to it

### Switching to a branch

```bash
    #  git checkout [branch name]
```
Modifications you make on a branch won't affect other branches

### Pushing a branch to a remote repository

```bash
    # git push [repository] [branch name]
```
If the branch doesn't exist on the remote repository, it will be created.
If the branch already exists, it will be updated with the latest commits

Example :
```bash
    # git push origin mybranch
```

'origin' is typically the main repository. However, others may be added using the following command :
```bash
    # git remote add [repository name] [repository url]
```

### Deleting a local branch
```bash
    #  git branch -d [branch name]
```
This will only delete the branch locally

### Deleting a remote branch
```bash
    #  git push [remote repository name] :[branch name]
```
This will only delete the branch on the remote repository

Example :
```bash
    #  git push origin :mybranch
```

## Fixing Sh** up

### Reverting a commit after a mistake was made

```bash
    #  git revert HEAD~1
```

if the bad commit has already been pushed, it can be overriden by forcing the push with the '-f' flag, carefully of course.

### Conflicts in a pull request ?

Rebase your branch on the one you're trying to merge in

```bash
    #  git rebase [branch to merge into]
```

This will apply every commit you have made on the branch. When conflicts occur while rebasing, simply fix the files and add them

```bash
    #  git add [files]
```

After adding the files, the rebase can continue

```bash
    #  git rebase --continue
```

## Simply useful

### Git Stash

#### Stashing your changes

If you have made changes to a file that you do not with to have any more, but still want to save for later, you can stash them with the following command

```bash
    #  git stash
```

This will add them to a stack of changes.

#### Re-using your stashed changes

You can pop the stack of changes, and have the latest changes be applied using the following command :

```bash
    #  git stash pop
```

If you wish to apply them, but without popping the stack, just use the 'apply' command as follows :

```bash
    #  git stash apply
```

#### Stashing only a portion of your changes

```bash
    #  git stash -p
```
