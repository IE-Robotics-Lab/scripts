import random
import csv


# open csv file with users
with open('users.csv', 'r') as file: # fname, lname, email
    reader = csv.reader(file)
    users = list(reader)
    # turn to list of jsons with keys
    users = [dict(zip(users[0], user)) for user in users[1:]]
    print("Users: ", users)
    print("# of users: ", len(users))


new_users = []
for user in users:
    first_name = user.get("First Name")
    last_name = user.get("Last Name")
    email = user.get("Email")
    if email:
        uname = email.split("@")[0]
    if not (first_name and last_name and email and uname):
        print("Invalid user: ", user)
        continue
    initials = first_name[0] + "." + last_name[0] + "."

    new = {
        'dn_suffix': 'ou=people,dc=colossus',
        'dn_rdn': 'uid',
        # email
        "inetOrgPerson_firstName": first_name,
        "inetOrgPerson_lastName": last_name,
        "inetOrgPerson_initials": initials,
        "inetOrgPerson_email": email if email else "TBD",
        "posixAccount_userName": uname,
        "posixAccount_group": "guests",
        "posixAccount_password": uname + "__",
    }

    new_users.append(new)

# write to new csv file
with open('new_users.csv', 'w') as file:
    writer = csv.DictWriter(file, fieldnames=new_users[0].keys())
    writer.writeheader()
    writer.writerows(new_users)
    print("New users: ", new_users)
