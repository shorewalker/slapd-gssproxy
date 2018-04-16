#!/usr/bin/make -f

install:
	mkdir -p /systemd/system/slapd.service.d/
	install -m 644 systemd/system/slapd.service.d/gssproxy.conf	/systemd/system/slapd.service.d/
	install -m 600 etc/gssproxy/55-slapd.conf	/etc/gssproxy/55-slapd.conf 
	semodule -i selinux/gssproxy-slapd.pp
