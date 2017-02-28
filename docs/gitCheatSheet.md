## GIT Cheat Sheet

 CREATE | LOCAL CHANGES | BRANCHES & TAGS | MERGE & REBASE
  ---   |     ---       |      ----       |      ---
  <sup>Clone an existing repository <br/> **$ git clone ssh://user@domain.com/repo.git**<sup> | <sup>Changed files in your working directory <br/> **$ git status**<sup> | <sup>List all existing branches <br/> **$ git branch -av**<sup> | <sup>Merge \<branch\> into your current HEAD <br/> **$ git merge \<branch\>**<sup>
 <sup>Create a new local repository <br/> **$ git init**<sup> | <sup>Changes to tracked files <br/> **$ git diff**<sup> | <sup>Switch HEAD branch <br/> **$ git checkout \<branch\>**<sup> | <sup>Rebase your current HEAD onto \<branch\> <br/> *Don't rebase publised commits* <br/> **$git rebase \<branch\>**<sup> |
 | <sup>Add all current changes to the next commit <br/> **$ git add \.**<sup> | <sup>Create a new branch based on your current HEAD <br/> **$ git branch \<new\-branch\>**<sup> | <sup>Abort a release <br/> **$ git rebase --abort**<sup> |
 | <sup>Add some changes in \<file\> to the next commit <br/> **$ git add -p \<file\>**<sup> | <sup>Create a new tracking branch based on a remote branch <br/> **$ git checkout --track \<remote/branch\>**<sup> | <sup>Continue a rebase after resolving conflicts <br/> **$ git rebase --continue**<sup> |
 | <sup>Commit all local changes in tracked files <br/> **$ git commit -a**<sup> | <sup>Delete a local branch <br/> **$ git branch -d \<branch\>**<sup> | <sup>Use your configured merge tool to solve conflicts <br/> **$ git mergetool**<sup> |
 | <sup>Commit previously staged changes <br/> **$git commit**<sup> | <sup>Mark the current commit with a tag <br/> **$ git tag \<tag-name\>**<sup> | <sup>Use your editor to manually solve conflicts and \(after resolving\) mark file as resolved <br/> **$ git add \<resolved-file\>** <br/> **$ git rm \<resolved-file\>**<sup> |
 | <sup>Change the last commit <br/> *Don't ammend published commits* <br/> **$ git commit --ammend**<sup>
	 
## GIT Cheat Sheet (con't)

 COMMIT HISTORY | UPDATE & PUBLISH | UNDO
     ---        |       ---        |  ---
 <sup>Show all commits, sarting with newest <br/ **$ git log**><sup> | <sup>List all currently configured remotes <br/> **$ git remote -v**<sup> | <sup>Discard all local changes in your working directory <br/> **$ git reset --hard HEAD**<sup>
<sup>Show changes over time for a specific file <br/> **$ git log -p \<file\>**<sup>
 