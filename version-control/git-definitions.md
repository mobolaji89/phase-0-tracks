# Git Definitions :

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

>"Version control is a system that records changes to a file or set of files over time so that you can recall specific versions later." Source: [About Version Control] (https://git-scm.com/book/en/v2/Getting-Started-About-Version-Control)

Version control helps software teams manage changes of code over time. It is useful because version control software like Git can help organize every modification of code, and if mistakes are made by any developer, someone can always go back to the original version.

* What is a branch and why would you use one?

>"Branching means you diverge from the main line of development and continue to do work without messing with that main line." Source: [Git Branching - Branches in a Nutshell] (https://git-scm.com/book/en/v2/Git-Branching-Branches-in-a-Nutshell#_git_branching)

In simple terms, a branch is a pointer to a commit that you created in Git. The initial commit (default branch) is called a 'Master.'


* What is a commit? What makes a good commit message?

A commit is an object created that contains metadata and points to the original root project. It is basically a snapshot of your root project.

A good commit message should explain the change you made to the project. I've read that a commit message should be written in present tense rather than past tense, for better flexibility through time. You shouldn't write about what a commit did... You're writing about it does, because you may always revert to a previous version.


* What is a merge conflict?

A merge conflict is the most commont type of conflict in Git. It occurs when two different developers make changes on the same line in the same file, and then the branches are merged together. Furthermore, Git has trouble understanding which of the two changes should be used over the other.

>"When this sort of conflict occurs, Git writes a special block into the file that contains the contents of both versions where the conflict occurred. To complete this type of merge, use your text editor to resolve the conflict, then add the file and commit it to complete the merge." Source: [Resolving a merge conflict from the command line] (https://help.github.com/articles/resolving-a-merge-conflict-from-the-command-line/)