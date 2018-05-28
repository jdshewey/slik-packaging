sudo mkdir /opt/slik-packaging
cd /opt/slik-packaging
yum -y install rpm-build
git clone https://github.com/jdshewey/slik
git clone https://github.com/jdshewey/salt-formula-freeipa
git clone https://github.com/jdshewey/salt-formula-openssh.git
git clone https://github.com/jdshewey/pulp_hook
rm -f ./rpmbuild/SOURCES/slik.tar.gz
tar -czvf ./rpmbuild/SOURCES/slik.tar.gz --exclude=".git" slik/
