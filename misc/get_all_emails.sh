ldapsearch -x -H ldap://10.205.1.2/ -D "cn=admin,dc=colossus" -b "dc=colossus" -s sub "(mail=*)" mail | grep "^mail:" | awk '{print $2}'
