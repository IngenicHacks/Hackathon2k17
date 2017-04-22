#!/bin/bash

echo -e "Are you sure you want your /etc/ssh/sshd_config replaced?(y/n)\n"
read response

if response == y
	cp lib/sshd_config /etc/ssh/sshd_config
	echo "done"
fi


