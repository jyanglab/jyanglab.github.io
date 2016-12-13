
library("servr")
jekyll(dir = ".", input = c(".", "_rootsource", "_postsource"),
       output = c(".",  ".", "_posts"), script = c("Makefile", "build.R"), serve = TRUE,
       command = "jekyll build")


### How to change markdown CSS elements
### https://gist.github.com/jonschlinkert/5854601
