# Notes / Tips

## Git

* https://git-scm.com/

### Git setup

* First time Git setup: https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup

```shell
git config --global user.name "John Doe"
git config --global user.email yourEmail@company.com
```

* Under Windows, consider setting `core.filemode` to `false`, otherwise you
will probably unintentionally commit text files with the executable bit set.

```shell
# For Windows ignore the executable bit on files in the working tree
git config --global core.filemode false

# then later if you need to add executable bit to file mode, do
git update-index --chmod=+x file.bat
```

* Checking your settings: `git config --list`

### Git Commit message convention
* How to Write a Git Commit Message  
  * https://chris.beams.io/posts/git-commit
  * The seven rules of a great Git commit message
    1. Separate subject from body with a blank line
    2. Limit the subject line to 50 characters
    3. Capitalize first letter of the subject line
    4. Do not end the subject line with a period
    5. Use the imperative mood in the subject line
        - Imperative mood means "spoken or written as if giving a
          command or instruction", such as:
          ```
          Refactor subsystem X for readability
          Remove deprecated methods
          Release version 1.0.0
          ```
        - A properly formed Git commit "subject line" should always
          be able to complete the following sentence:  
            If applied, this commit will `subject line here`
    6. Wrap the body at 72 characters
    7. Use the body to explain what and why vs. how

### Signing tags and commits
* Should sign tags with [GnuPG (GPG)](https://www.gnupg.org/)
  * `git tag --sign ...` or `git tag -s ...`
* Optionally, sign commits (If you register your GPG key with GitLab, it get's a green `#1AAA55` Verified)
  * `git commit --gpg-sign ...` or `git commit -S ...`
* See following link for detailed instructions
  * https://gitlab.com/help/user/project/repository/gpg_signed_commits/index.md

### References / Resources

* Pro Git by Scott Chacon and Ben Straub (free) download ebook or read online.  
  [https://git-scm.com/book](https://git-scm.com/book)
* [Git Flight Rules](https://github.com/k88hudson/git-flight-rules)


## Encryption

* To encrypt file using a password in a file named `file.password` using AES-256 and SHA-256 digest

```shell
openssl enc -e -aes256 -md sha256 -pass file:file.password -in input.file -out encrypted.sha256.aes256
```

* To decrypt file with above settings

```shell
openssl enc -d -aes256 -md sha256 -pass file:file.password -in encrypted.sha256.aes256 -out output.file
```


## Nginx

* Official website: https://nginx.org
* Official source repo: http://hg.nginx.org/nginx/
* GitHub repo mirror: https://github.com/nginx/nginx
* Running in Docker container: https://docs.nginx.com/nginx/admin-guide/installing-nginx/installing-nginx-docker/


* Start nginx web server

```shell
service nginx start

# -or-
systemctl start nginx
```

* Stop nginx web server

```shell
service nginx stop

# -or-
systemctl stop nginx

# -or- (for graceful shutdown)
nginx -s quit

# -or- (for force/fast shutdown)
nginx -s stop
```

* Restart nginx web server
`/usr/local/etc/rc.d/nginx restart`
```shell
service nginx restart

# -or-
systemctl restart nginx

# -or-
nginx restart
```

* Test/Check Nginx configuration file (using `-t`):

```shell
nginx -t -c /path/to/nginx.conf
```

* Reload Nginx configuration:

```shell
nginx -s reload

# or send SIGHUP signal to nginx process
kill -HUP <nginx-pid>
```


## SSH

### Generate secure ssh key

* Create secure [ED25519](https://en.wikipedia.org/wiki/EdDSA#Ed25519) SSH key with with 99 KDF rounds:

```shell
ssh-keygen -t ed25519 -a 99
```

* Get length of private ssh key:

```shell
ssh-keygen -lf ~/.ssh/id_rsa

ssh-keygen -lf ~/.ssh/id_ed25519
```

* Forward port via ssh:

```shell
ssh -L local_port:remote_host:remote_port server
```
