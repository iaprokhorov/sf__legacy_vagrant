export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PATH=$PATH:/usr/lib/postgresql/8.4/bin/
export PGDATA=/usr/local/pgsql/data

locale-gen en_US.UTF-8
dpkg-reconfigure locales

sudo apt-get update
sudo apt-get install -y postgresql-client postgresql libpq5 libpq-dev

sudo su
sudo -u postgres psql postgres
\password postgres

/etc/init.d/postgresql-8.4 restart
