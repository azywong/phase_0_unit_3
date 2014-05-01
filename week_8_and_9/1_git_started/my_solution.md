## Release 2: Basic Git Commands
Define the following commands and describe how they work/what they do.  


#### add
adds file to staging area so git can keep track of it

#### branch
creates a new branch (an alternate set of files based on the master set where changes to the branch take place on their own)

#### checkout
goes to that file and gets rid of all changes since that commit.  Or goes to that branch.

#### clone
clones the repository in the new directory

#### commit
commits changes.  Like taking a snapshot of changes since the last commit

#### fetch
retrieves any commits that you don't have and stores them locally

#### log
pulls up all changes committed so far

#### merge
combines commits of the specified branches

#### pull
takes commits from the specified source and combines with the current branch.

#### push
pushes commits to the remote repository hosted on github

#### reset
undoes the last commit

#### rm
removes the file(s)

#### status
shows status of repository


## Release 3: Git Workflow

- Push files to a remote repository
```
git push origin master
```

- Fetch changes
```
git fetch upstream
git merge upstream/master
```

- Commit locally
```
git commit -m "comment"
```


## Reflect

#### What parts of your strategy worked? What problems did you face?
I went through and read a bunch of the resources on git and jotted down some notes.  I didn't understand the first resource, so I kept on
going and reading more that explained things in different ways.

#### What questions did you have while coding? What resources did you find to help you answer them?
The questions I had were mainly answered by the linked resources.  Any questions I still have can be traced back to my general shakey-ness
with using git.

#### What concepts are you having trouble with, or did you just figure something out? If so, what?
I'm having trouble with some of the general commands in git, just how they work and when I'd need to use them.  I'm still not quite sure I
totally understand reset and what's going on.

#### Did you learn any new skills or tricks?
This is all entirely new to me so I guess new skill is using git from the terminal.

#### How confident are you with each of the Learning Competencies?
I'm not super confident with the learning competencies.  I think I can use git in the terminal at a basic level, but thats it.

#### Which parts of the challenge did you enjoy?
Not much really.

#### Which parts of the challenge did you find tedious?
It was frustrating to go through so many wordy resources and still not really understand what was going on.