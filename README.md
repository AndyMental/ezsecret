# README
1. Create a clean ruby on rails application using twitter bootstrap.
2. Create User model with fields first, last, email.
3. Install and setup devise gem to use the User model for auth (email used as a user name).
4. Generate devise views via rake command
5. On the register new user view add a new text field called Secret Code.
6. Restrict user registration so a hard coded secret code must be entered, eg. 'foobar'.
7. Create a new user with seeds called 'admin'
8. Create a controller/model SecretCode (1-to-1 relationship to Users which can be null, plus code string and usual created/updated).
9. The controller needs to provide a view and actions to generate a number of secret codes.
10. Index page shows secret codes available, and the associated user email address for ones that have an association.
11. Index page also has a button to generate more secret code models which by default have no associated user and a randomly generated secret code (some short hash or guid).
12. The index page also has a drop down filled with 1, 10, 20, 50, 100 which determines how many secret codes to generate (default selection on drop down is 10).
13. link secret code field on user registration page to only allow available secret code models (one with no current user associated).
14. registering a user will create association between user and the valid secret code they used.
15. secret code index page should show user email address for a secret code after they use it for registration in a table next to the code.
16. setup CanCan ACL gem.
17. create a role called :admin and manually in DB associate it with the admin user created manually earlier (no UI needed for this config).
18. configure so that SecretCode page link and entire controller is only accessible to :admin role users.
