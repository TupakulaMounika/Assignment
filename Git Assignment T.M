labuser@labuser-virtual-machine:~$ git --version
git version 2.34.1
labuser@labuser-virtual-machine:~$ mkdir test1
labuser@labuser-virtual-machine:~$ cd test1
labuser@labuser-virtual-machine:~/test1$ git init
hint: Using 'master' as the name for the initial branch. This default branch name
hint: is subject to change. To configure the initial branch name to use in all
hint: of your new repositories, which will suppress this warning, call:
hint: 
hint: 	git config --global init.defaultBranch <name>
hint: 
hint: Names commonly chosen instead of 'master' are 'main', 'trunk' and
hint: 'development'. The just-created branch can be renamed via this command:
hint: 
hint: 	git branch -m <name>
Initialized empty Git repository in /home/labuser/test1/.git/
labuser@labuser-virtual-machine:~/test1$ git init
Reinitialized existing Git repository in /home/labuser/test1/.git/
labuser@labuser-virtual-machine:~/test1$ echo "test1" > test1
labuser@labuser-virtual-machine:~/test1$ git status
On branch master

No commits yet

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	test1

nothing added to commit but untracked files present (use "git add" to track)
labuser@labuser-virtual-machine:~/test1$ git add
Nothing specified, nothing added.
hint: Maybe you wanted to say 'git add .'?
hint: Turn this message off by running
hint: "git config advice.addEmptyPathspec false"
labuser@labuser-virtual-machine:~/test1$ git commit -m "change1"
On branch master

Initial commit

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	test1

nothing added to commit but untracked files present (use "git add" to track)
labuser@labuser-virtual-machine:~/test1$ git add .
labuser@labuser-virtual-machine:~/test1$ git commit -m "change1"
[master (root-commit) 9bc294c] change1
 1 file changed, 1 insertion(+)
 create mode 100644 test1
labuser@labuser-virtual-machine:~/test1$ git remote add origin https://github.com/TupakulaMounika/labtest1.git
labuser@labuser-virtual-machine:~/test1$ git remote -v
origin	https://github.com/TupakulaMounika/labtest1.git (fetch)
origin	https://github.com/TupakulaMounika/labtest1.git (push)
labuser@labuser-virtual-machine:~/test1$ git push -u origin master
Username for 'https://github.com': TupakulaMounika
Password for 'https://TupakulaMounika@github.com': 
remote: Support for password authentication was removed on August 13, 2021.
remote: Please see https://docs.github.com/get-started/getting-started-with-git/about-remote-repositories#cloning-with-https-urls for information on currently recommended modes of authentication.
labuser@labuser-virtual-machine:~/test1$ git push -u origin master
Username for 'https://github.com': TupakulaMounika
Password for 'https://TupakulaMounika@github.com': 
Enumerating objects: 3, done.
Counting objects: 100% (3/3), done.
Writing objects: 100% (3/3), 222 bytes | 222.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
To https://github.com/TupakulaMounika/labtest1.git
 * [new branch]      master -> master
Branch 'master' set up to track remote branch 'master' from 'origin'.
labuser@labuser-virtual-machine:~/test1$ ls
test1
labuser@labuser-virtual-machine:~/test1$ nano test1
labuser@labuser-virtual-machine:~/test1$ git add .
labuser@labuser-virtual-machine:~/test1$ git commit -m "change2"
[master eedbd1e] change2
 1 file changed, 2 insertions(+), 1 deletion(-)
labuser@labuser-virtual-machine:~/test1$ git push -u origin master
Username for 'https://github.com': TupakulaMounika
Password for 'https://TupakulaMounika@github.com': 
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Writing objects: 100% (3/3), 252 bytes | 252.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
To https://github.com/TupakulaMounika/labtest1.git
   9bc294c..eedbd1e  master -> master
Branch 'master' set up to track remote branch 'master' from 'origin'.
labuser@labuser-virtual-machine:~/test1$ git branch
* master
labuser@labuser-virtual-machine:~/test1$ git branch devops1
labuser@labuser-virtual-machine:~/test1$ 
labuser@labuser-virtual-machine:~/test1$ 
labuser@labuser-virtual-machine:~/test1$ git checkout devops1
Switched to branch 'devops1'
labuser@labuser-virtual-machine:~/test1$ git branch
* devops1
  master
labuser@labuser-virtual-machine:~/test1$ echo "test3" > file1
labuser@labuser-virtual-machine:~/test1$ echo "test4" > file2
labuser@labuser-virtual-machine:~/test1$ ls -li
total 12
6161942 -rw-rw-r-- 1 labuser labuser 6 Dec 14 06:22 file1
6161979 -rw-rw-r-- 1 labuser labuser 6 Dec 14 06:23 file2
6161944 -rw-rw-r-- 1 labuser labuser 7 Dec 14 06:07 test1
labuser@labuser-virtual-machine:~/test1$ git add .
labuser@labuser-virtual-machine:~/test1$ git commit -m "change4"
[devops1 e2d68e2] change4
 2 files changed, 2 insertions(+)
 create mode 100644 file1
 create mode 100644 file2
labuser@labuser-virtual-machine:~/test1$ git push -u origin devops1
Username for 'https://github.com': TupakulaMounika
Password for 'https://TupakulaMounika@github.com': 
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 4 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (4/4), 320 bytes | 320.00 KiB/s, done.
Total 4 (delta 0), reused 0 (delta 0), pack-reused 0
remote: 
remote: Create a pull request for 'devops1' on GitHub by visiting:
remote:      https://github.com/TupakulaMounika/labtest1/pull/new/devops1
remote: 
To https://github.com/TupakulaMounika/labtest1.git
 * [new branch]      devops1 -> devops1
Branch 'devops1' set up to track remote branch 'devops1' from 'origin'.
labuser@labuser-virtual-machine:~/test1$ git branch
* devops1
  master
labuser@labuser-virtual-machine:~/test1$ git checkout master
Switched to branch 'master'
Your branch is up to date with 'origin/master'.
labuser@labuser-virtual-machine:~/test1$ git merge devops1
Updating eedbd1e..e2d68e2
Fast-forward
 file1 | 1 +
 file2 | 1 +
 2 files changed, 2 insertions(+)
 create mode 100644 file1
 create mode 100644 file2
labuser@labuser-virtual-machine:~/test1$ git log -p
commit e2d68e285e8ebccc16e01172252be2e2d6a8b876 (HEAD -> master, origin/devops1, devops1)
Author: David Robichaud <david.robichaud@skillsoft.com>
Date:   Sat Dec 14 06:24:24 2024 -0500

    change4

diff --git a/file1 b/file1
new file mode 100644
index 0000000..df6b0d2
--- /dev/null
+++ b/file1
@@ -0,0 +1 @@
+test3
diff --git a/file2 b/file2
new file mode 100644
index 0000000..d234c5e
--- /dev/null
+++ b/file2
@@ -0,0 +1 @@
+test4

commit eedbd1e1612c0ed44ba4ebee9a1214897fb91bd5 (origin/master)
Author: David Robichaud <david.robichaud@skillsoft.com>
Date:   Sat Dec 14 06:09:14 2024 -0500

    change2

diff --git a/test1 b/test1
index a5bce3f..4a19b05 100644
--- a/test1
+++ b/test1
@@ -1 +1,2 @@
-test1
+test2
+

commit 9bc294c109e2d37c4b9200e163c73c485989f0bc
Author: David Robichaud <david.robichaud@skillsoft.com>
Date:   Sat Dec 14 04:39:56 2024 -0500

    change1

diff --git a/test1 b/test1
new file mode 100644
index 0000000..a5bce3f
--- /dev/null
+++ b/test1
@@ -0,0 +1 @@
+test1
labuser@labuser-virtual-machine:~/test1$ git log --online
fatal: unrecognized argument: --online
labuser@labuser-virtual-machine:~/test1$ git log --oneline
e2d68e2 (HEAD -> master, origin/devops1, devops1) change4
eedbd1e (origin/master) change2
9bc294c change1
labuser@labuser-virtual-machine:~/test1$ cd
labuser@labuser-virtual-machine:~$ git clone https://github.com/TupakulaMounika/labtest1.git
Cloning into 'labtest1'...
remote: Enumerating objects: 10, done.
remote: Counting objects: 100% (10/10), done.
remote: Compressing objects: 100% (4/4), done.
remote: Total 10 (delta 0), reused 10 (delta 0), pack-reused 0 (from 0)
Receiving objects: 100% (10/10), done.
labuser@labuser-virtual-machine:~$ ls -li
total 52
6029410 drwxr-xr-x 2 labuser labuser 4096 Sep 12  2023 Desktop
6029414 drwxr-xr-x 3 labuser labuser 4096 Dec 15  2023 Documents
6029411 drwxr-xr-x 2 labuser labuser 4096 Dec 18  2023 Downloads
6036475 -rw-rw-r-- 1 labuser labuser   53 Dec 18  2023 execute.yml
6029747 drwxrwxr-x 3 labuser labuser 4096 Dec 14 06:49 labtest1
6029415 drwxr-xr-x 2 labuser labuser 4096 Sep 12  2023 Music
6029416 drwxr-xr-x 2 labuser labuser 4096 Sep 12  2023 Pictures
6029413 drwxr-xr-x 2 labuser labuser 4096 Sep 12  2023 Public
6030259 drwxrwxr-x 2 labuser labuser 4096 Dec 18  2023 repos
6029322 drwx------ 6 labuser labuser 4096 Dec 15  2023 snap
6029412 drwxr-xr-x 2 labuser labuser 4096 Sep 12  2023 Templates
6161918 drwxrwxr-x 3 labuser labuser 4096 Dec 14 06:37 test1
6029418 drwxr-xr-x 2 labuser labuser 4096 Sep 12  2023 Videos
labuser@labuser-virtual-machine:~$ cd labtest1
labuser@labuser-virtual-machine:~/labtest1$ ls
test1
labuser@labuser-virtual-machine:~/labtest1$ mkdir dev1
labuser@labuser-virtual-machine:~/labtest1$ cd dev1
labuser@labuser-virtual-machine:~/labtest1/dev1$ git pull https://github.com/TupakulaMounika/labtest1.git
From https://github.com/TupakulaMounika/labtest1
 * branch            Master       -> FETCH_HEAD
Already up to date.
labuser@labuser-virtual-machine:~/labtest1/dev1$ git branch
* master
labuser@labuser-virtual-machine:~/labtest1/dev1$ ls -li
total 4
labuser@labuser-virtual-machine:~/labtest1/dev1$ git branch m1labuser@labuser-virtual-machine:~/labtest1/dev1$ git checkout m1
labuser@labuser-virtual-machine:~/labtest1/dev1$ echo "apple1"labuser@labuser-virtual-machine:~/labtest1/dev1$ echo "apple1" > fruit
labuser@labuser-virtual-machine:~/labtest1/dev1$ ls
fruit
labuser@labuser-virtual-machine:~/labtest1/dev1$ git checkout master
Switched to branch 'master'
Your branch is up to date with 'origin/master'.
labuser@labuser-virtual-machine:~/labtest1/dev1$ ls
fruit
labuser@labuser-virtual-machine:~/labtest1/dev1$ git checkout m1
Switched to branch 'm1'
labuser@labuser-virtual-machine:~/labtest1/dev1$ ls
fruit
labuser@labuser-virtual-machine:~/labtest1/dev1$ git rebase master
Current branch m1 is up to date.
labuser@labuser-virtual-machine:~/labtest1/dev1$ ^C
labuser@labuser-virtual-machine:~/labtest1/dev1$ 
