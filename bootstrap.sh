# The output of all these installation steps is noisy. With this utility
# the progress report is nice and concise.
function install {
    echo installing $1
    shift
    apt-get -y install "$@" >/dev/null 2>&1
}

echo updating package information
apt-add-repository -y ppa:brightbox/ruby-ng >/dev/null 2>&1
apt-get -y update >/dev/null 2>&1

install 'development tools' build-essential

install Ruby ruby2.1 ruby2.1-dev
update-alternatives --set ruby /usr/bin/ruby2.1 >/dev/null 2>&1
update-alternatives --set gem /usr/bin/gem2.1 >/dev/null 2>&1

echo installing Bundler
gem install bundler -N >/dev/null 2>&1

##
install Git git
install SQLite sqlite3 libsqlite3-dev

##
debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
install MySQL mysql-server libmysqlclient-dev

##
mysql -uroot -proot <<SQL
CREATE USER 'deps'@'localhost';
CREATE DATABASE activerecord_unittest  DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
CREATE DATABASE activerecord_unittest2 DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
GRANT ALL PRIVILEGES ON activerecord_unittest.* to 'deps'@'localhost';
GRANT ALL PRIVILEGES ON activerecord_unittest2.* to 'deps'@'localhost';
GRANT ALL PRIVILEGES ON inexistent_activerecord_unittest.* to 'deps'@'localhost';
SQL

##
install 'nodejs runtime' nodejs

##
gem install rails