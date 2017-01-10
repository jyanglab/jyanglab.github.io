---
layout: post
title: Using Github for a Collabrative Research Project
subtitle: fork, pull, push, and pull request
tags: [Github, R, project]
category: [computing]
bigimg: /img/path.jpg
---


Here is the collabrative workflow:


## 1. Fork the project on Github to your own repo and Clone or download source code.

```
git clone git@github.com:YOUR_GITHUB_ID/PROJECT.github.io.git
```


## 2. Create or edit files.

Folders in a project serve for their own purpose. Read this [post](https://jyanglab.github.io/2017-01-07-project/) to learn more about which folder you should put your codes in (`/profilling`) and which folder you should store intermediate data (`cache`), and others.

Important, do not use absolute path. The path should be relative, i.e. use `profilling/1.code.R` but not `user/local/MYUSERNAME/Documents/profilling/1.code.R`. Because not all your collabrators share the same working directory.

## 3. Commit your changes

Commit with informative message. Most important commit information would be why you do this, i.e. `to study the population structure` or `plot correlationship matrix`.

```
git add --all
git commit -m 'to explore pop structure.'
```

## 4. Push to the branch

```
git push origin my-new-feature
```

## 5. Create a new `Pull Request`

![Imgur](http://i.imgur.com/9zaA5IK.png)

