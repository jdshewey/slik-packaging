sudo mkdir /opt/slik-packaging
cd /opt/slik-packaging
yum -y install rpm-build
git clone https://github.com/jdshewey/slik
git clone https://github.com/salt-formulas/salt-formula-freeipa
git clone https://github.com/salt-formulas/salt-formula-openssh
git clone https://github.com/jdshewey/pulp_hook
rm -f ./rpmbuild/SOURCES/slik.tar.gz
tar -czvf ./rpmbuild/SOURCES/slik.tar.gz slik/
