# slapd-gssproxy
gssproxy configuration (and SELinux module) for OpenLDAP's Stand-alone LDAP Daemon

# Status - [Currently Broken](https://github.com/voxnil/slapd-gssproxy/issues/1)

## Dependencies
`openldap-servers`  
`gssproxy`  
`systemd`  

## Installation Dependencies
`git`  
`make`  
`selinux-policy-devel`  

## Installation
```
git clone https://github.com/voxnil/slapd-gssproxy.git
cd slapd-gssproxy
make && sudo make install
```
