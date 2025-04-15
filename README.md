# Docker_php8.2

### Contains:
#### PHP 8.2
- sodium
- soap
- gd
- ldap
- imap
- zip
- gmp
- pdo
- bcmatch
- bz2
- calendar
- exif
- gettext
- sysvsem
- sysvshm
- sockets
- shmop
- tidy
- xsl
- intl
- memcache 8.2
#### MySQL 5.7
#### FakeSMTP

### Installation:
1. `mkdir <your_root_project_folder>`  
2. `cd <your_root_project_folder>`
3. `curl -L https://api.github.com/repos/JackRabbit911/Docker_php8.2/tarball/master > docker.tar`
4. `tar -xf docker.tar`
5. `mv JackRabbit911-Docker_php8.2*/{*,.[^.]*} .`
6. `rm docker.tar`  
Or
1. `git clone https://github.com/JackRabbit911/Docker_php8.2 <your_root_project_folder>`
2. `rm -Rf .git`
3. `rm skeleton_install.sh` (if you don't need it)
