## Git Configuration Setup using Command Line

### Commands

Below commands are used to setup your name and email for local machine Git then
create public key to store it on your online repository for secure login.

```
$ git config --global user.name "YOUR NAME"
$ git config --global user.email "YOUR@EMAIL.com"
$ ssh-keygen -t rsa -b 4096 -C "YOUR@EMAIL.com"
$ cat ~/.ssh/id_rsa.pub
$ ssh -T git@github.com
```
