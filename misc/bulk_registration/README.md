# Bulk Registration Script

Create a Google Sheet with these columns:

```
First Name	Last Name	Email
```

They must be strictly this syntax.

1. Have all the new users fill out their data into this column, you can also create a google form to fill out this new sheet.
2. Export the file as a `.csv` and rename it to `users.csv`
3. Put it into the same directory as the script `main.py` from this directory
4. Run the file `python main.py` which will create a new file `new_users.csv`
5. Open LAM in colossus, sign-in as admin, click on "File Upload" in the "Users" page
6. You will be prompted for the CSV file, upload `new_users.csv`
7. Follow instructions on the screen.


## About
All new users will be created with the following details:
**Username**: All before the _@_ in their email
**Passsword**: `username`__

So if we have a user like:

| First Name | Last Name | Email |
| Johny | Doey | johny@doey.com |

Their username will be `johny` and password `johny__`.

> [[!IMPORTANT]]
> All users should change their password on first login by running `passwd`
