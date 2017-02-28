## GIT Cheat Sheet

 CREATE | LOCAL CHANGES | BRANCHES & TAGS | MERGE & REBASE
  ---   |     ---       |      ----       |      ---
  Clone an existing repository <br/> **$ git clone ssh://user@domain.com/repo.git** | Changed files in your working directory <br/> **$ git status** | List all existing branches <br/> **$ git branch -av** | Merge <branch> into your current HEAD <br/> **$ git merge <branch**>
 Create a new local repository <br/> **$ git init** | Changes to tracked files <br/> **$ git diff** | Switch HEAD branch <br/>
 **$ git checkout <branch>** | Rebase your current HEAD onto <branch> <br/> *Don't rebase publised commits* <br/> **$git rebase <branch>**
 | Add all current changes to the next commit <br/> **$ git add .** | Create a new branch based on your current HEAD <br/> **$ git branch <new-branch>** | Abort a release <br/> **$ git rebase --abort**
 