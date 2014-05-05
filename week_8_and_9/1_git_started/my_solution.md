## Release 2: Basic Git Commands
Define the following commands and describe how they work/what they do.  


#### add
This command starts tracking modifications of a new file.  

#### branch
This lists the branches that are currently are in your repository.

#### checkout
Checkout updates the branch and allows you to navigate between multiple branches

#### clone
This allows you to duplicate the repository on a local place.  

#### commit
This takes the changes made to files and updates them by taking a snapshot of them

#### fetch
Fetching gets changes from the remote repository to a branch in your cloned local repo.  You are then able to integrate them into your local
repository 

#### log
List the commits that have taken place as well as their descripition

#### merge
This integrates the independent branches into one combined branch

#### pull
This performs the fetch and merge commands simultaneously 

#### push
Updates the remote repository with changes (commits) from local repository

#### reset
This is used to undo changes made in the local repositories commits.  You can unstage changes to files and revert to original version.  

#### rm
Removes file from lists of files that have their changes tracked

#### status
Shows whether the files in the staging area are. Unstaged, staged, untracked are the statuses

## Release 3: Git Workflow

- Push files to a remote repository
	- git init 
	- git add #file
	- git commit -m "Description goes here"
	- git remote add origin https://github.com/name/name.git
	- git push -u origin master
- Fetch changes
	- git fetch origin
	- git merge origin/master
- Commit locally
	- git init 
	- git add #file
	- git commit -m "Description goes here"