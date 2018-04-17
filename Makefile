#!/usr/bin/make -f

selinux/gssproxy-slapd.pp:
	make -C selinux

selinux: selinux/gssproxy-slapd.pp

all: selinux

install: all
	install -C -D -m 644 systemd/system/slapd.service.d/gssproxy.conf /systemd/system/slapd.service.d/
	install -C -m 600 etc/gssproxy/55-slapd.conf /etc/gssproxy/
	semodule -i selinux/gssproxy-slapd.pp

clean:
	make -C selinux clean

#uninstall:
#	rm /systemd/system/slapd.service.d/gssproxy.conf
#	rm /etc/gssproxy/55-slapd.conf
#	semodule -r gssproxy-slapd
