%define name    slik
%define version 
Name:           slik
Version:        %{getenv:VERSION}
Release:        %{getenv:RELEASE}
Summary:        Installs a SLIK stack consisting of The Foreman, Katello, SaltStack and FreeIPA

License:        GPLv3
URL:            https://github.com/jdshewey/slik
Source0:        %{name}.tar.gz
Requires:	salt-master >= 2017.7.2-1, salt-minion >= 2017.7.2-1, pulp-admin-client >= 2.13.4-1 

%description
Installs a SLIK stack consisting of The Foreman, Katello, SaltStack and FreeIPA. Great for lifecycle management of your VMs, Docker containers and configuration management.

%prep
%setup

%install
make PREFIX=/usr DESTDIR=%{?buildroot} install

%clean
rm -rf %{buildroot}

%files
%{_bindir}/helloworld
