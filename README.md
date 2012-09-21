== Grunn.io

We're using git-flow as branching model. http://nvie.com/posts/a-successful-git-branching-model/

Install using brew: brew install git-flow

- development branch for development
- master branch as a stable version which is always ready for deployment

To release the development branch to master:

```
$ git flow release start 0.0.x
```

Bump the version number and commit

```
$ git flow release finish 0.0.x
```
