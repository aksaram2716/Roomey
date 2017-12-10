## CS407 - Team 11
### Roomey

Anna Benjamin, Akshit Gudoor, Wyatt Larkey, Hari Mantena, Maxwell Molnar, Nicholas Schneider


#### User Creation in Ruby Console
```
> rails console
> User.create(name: "Johnny Test", password: "Password123", password_confirmation: "Password123", email: "jtest@purdue.edu", houseID: 2)
```
This command will create a user entry in the `/roomey/db/development.sqlite` table.
Currently, users must have a unique email, not already present in the database.
Their passwords must be greater than 5 characters long, and not blank ("      ", will fail).
The houseID is not a required parameter when creating a User initially.
