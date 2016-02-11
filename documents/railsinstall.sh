#!/bin/bash

#Rails環境構築のための準備をするシェルスクリプト

#基本的な必要ライブラリをインストール
echo "基本的な必要ライブラリをインストール中だよん"
sudo yum -y install gcc
sudo yum -y install make
sudo yum -y install gcc-c++
sudo yum -y install zlib-devel
sudo yum -y install httpd-devel
sudo yum -y install openssl-devel
sudo yum -y install curl-devel
sudo yum --enablerepo=epel,remi,rpmforge install libxml2 libxml2-devel
sudo yum --enablerepo=epel,remi,rpmforge install libxslt libxslt-devel
sudo yum update
sudo yum -y install ruby-devel

# ファイアーウォール設定
sudo chkconfig httpd on
sudo service iptables stop
sudo chkconfig iptables off

echo "mysqlをインストール中だよん"
sudo yum --enablerepo=epel,remi,rpmforge install libxml2 libxml2-devel
sudo yum --enablerepo=epel,remi,rpmforge install libxslt libxslt-devel

sudo yum install mysql-server mysql-devel
sudo service mysqld start

# nginxインストール
echo "nginxのインストール中"
sudo yum -y install nginx
sudo /etc/init.d/nginx start

# ImageMagickインストール
echo "ImageMagickのインストール中"
sudo yum -y install libjpeg-devel libpng-devel
sudo yum -y install ImageMagick ImageMagick-devel

# CentOSに入ってるRubyはバージョンが古いのでアンインストール
sudo yum -y remove ruby

# gitをインストール
echo "gitのインストール中"
sudo yum -y install git

# rbenvインストール
echo "rbenvのインストール中"
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
mkdir -p ~/.rbenv/plugins
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
cd ~/.rbenv/plugins/ruby-build
sudo ./install.sh
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
source ~/.bash_profile


#RubyとRailsをインストールするシェルスクリプト

# Rubyのインストール
echo "Rubyのインストール中"
sudo yum -y install openssl-devel
rbenv install 2.1.5
rbenv rehash
rbenv global 2.1.5
ruby -v

# Railsのインストール
echo "Railsのインストール中"
rbenv exec gem install rails -v 4.1.6
rbenv rehash
source ~/.bash_profile

#時刻合わせ
sudo rm /etc/localtime
sudo ln -s /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
