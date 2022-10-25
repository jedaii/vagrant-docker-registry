#!/bin/bash
cd /opt/registry/auth/
if [[ ! -e "./reg.pass" ]]; then
        touch "./reg.pass"
fi
cat ./users.list | while IFS=, read f1 f2; do
        user=$f1
        pass=$f2
	htpasswd -Bb ./reg.pass $user $pass
done
