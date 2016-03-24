### My dotfiles ###

* To install pre-commit hook
```
curl https://raw.githubusercontent.com/serwizz/dotfiles/master/pre-commit > .git/hooks/pre-commit && chmod +x .git/hooks/pre-commit
```

* To install pre-commit hook to all Yota projects
__run this in git bash in all projects directory__. You need bash version >= 2.0 (https://git-scm.com/download/win)
```
curl https://raw.githubusercontent.com/serwizz/dotfiles/master/hook.sh > hook.sh && chmod +x hook.sh && ./hook.sh
```