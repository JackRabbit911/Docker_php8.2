#!/usr/bin/bash

if [ -d ./.git ]; then
    read -p ".git folder was found in the root directory. Do you want to delete it? [Y/n] " yn
    yn=${yn,,}
    if [[ "$yn" =~ ^(yes|y|'')$ ]]; then
        echo ".git was deleted"
    fi
fi

if [ -d ./site.zone ]; then
    echo Folder site.zone exists in this directory. Aborting installation
    exit
fi

git clone https://github.com/JackRabbit911/app-skeleton site.zone
cd site.zone
rm -Rf .git
wget https://raw.githubusercontent.com/composer/getcomposer.org/f3108f64b4e1c1ce6eb462b159956461592b3e3e/web/installer -O - -q | php -- --quiet
mkdir -p -m=777 storage
mkdir -p -m=777 storage/logs storage/sessions storage/uploads storage/cache
cp .env.example .env
php composer.phar require alpha-zeta/framework
