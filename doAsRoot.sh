wget http://download.telldus.com/debian/telldus-public.key
echo "deb http://download.telldus.com/debian/ stable main" >> /etc/apt/sources.list
apt-get update
wget http://download.telldus.com/pool/main/t/telldus-core/telldus-core_2.1.3-beta1.orig.tar.gz
tar -zxvf telldus-core_2.1.3-beta1.orig.tar.gz
cd telldus-core-2.1.3-beta1/
apt install cmake build-essential
apt install pkg-config
apt install libftdi-dev
apt install libconfuse-common libconfuse-dev libconfuse-doc
cmake .
make
make DESTDIR=/opt install
