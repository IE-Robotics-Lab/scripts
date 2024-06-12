Assume:
- `[uname]` is your LDAP username.
- Robotics lab network access is NECESSARY for access to your file system and LDAP users

> [!IMPORTANT]
> The new default administrative user which does not rely on network access is called `failsafe`, this users home directory is mounted at `/var/local/failsafe/` - the password can be found in the credentials list.

---

1. Have `curl` installed on your system.

```bash
wget https://raw.githubusercontent.com/IE-Robotics-Lab/scripts/main/setup/setup.sh -O setup.sh && chmod +x setup.sh && sudo ./setup.sh
```

When prompted for the **BECOME password**, enter your user password to allow the script to run with `sudo` permissions.

> [!WARNING]
> Once you execute the script as root, all the existing home directory data will be removed.

4. Once the script is ready, enter root and execute with the first 2 commands given below. You will be prompted for inputting some few details as the packages get installed, this information is also given below. You will be prompted for the LDAP password, if you do not have it, you cannot run the script.
	1. `sudo su`
	2. `bash setup.sh`
		1. **LDAP Server**: `ldap://10.205.1.2`
		2. **LDAP Base DN**: `dc=colossus`
		3. **SELECT:** passwd,group,shadow
		4. When at _PAM configuration_ do not select anything and just hit OK
5. Now that all is setup and the script does not show any errors, some parts of the system may freeze right after installation, it is important to reboot the machine before any further work is done.
