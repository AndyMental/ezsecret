# README

Ruby Version : 2.5.0 (ruby 2.5.0p0 (2017-12-25 revision 61468) [x86_64-darwin17])
Rails Version : 5.2.2

Instruction to execute/run the setup:

```
rails db:create
rails db:migrate
rails db:seed
rails s
```

Standard User:
email: "standard_user@testing.com"
password: "password123"

Admin User:
email: "admin@testing.com"
password: "password"

# Tasks
1. Create a clean ruby on rails application using twitter bootstrap.![done](https://raw.githubusercontent.com/google/material-design-icons/224895a86501195e7a7ff3dde18e39f00b8e3d5a/action/ios/ic_done.imageset/ic_done.png)
  * Added Bootstrap, Jquery & FontAwesome gems and updated SCSS, JS files.
  * Added Home Index controller to work out required Bootstrap index page and create basic layout to be used later.
  * Made home index as root page and added required Bootstrap Template.
  * Created spaceholders for various pages to be created.
  * Initialized DB and Tested the setup
  * Versions followed Bootstrap V4 with Fontawesome V5.


2. Create User model with fields first, last, email.![done](https://raw.githubusercontent.com/google/material-design-icons/224895a86501195e7a7ff3dde18e39f00b8e3d5a/action/ios/ic_done.imageset/ic_done.png)
  * Created model using generate model command

3. Install and setup devise gem to use the User model for auth (email used as a user name).![done](https://raw.githubusercontent.com/google/material-design-icons/224895a86501195e7a7ff3dde18e39f00b8e3d5a/action/ios/ic_done.imageset/ic_done.png)
  * Install Devise and updated development.rb
  * Commented out email filed in devise migration to avoid error
  * Added required routes to Navbar Template

4. Generate devise views via rake command![done](https://raw.githubusercontent.com/google/material-design-icons/224895a86501195e7a7ff3dde18e39f00b8e3d5a/action/ios/ic_done.imageset/ic_done.png)
  * renamed devise view folder to users to avoid any error in future with custom routes incase of custom devise controller

5. On the register new user view add a new text field called Secret Code.![done](https://raw.githubusercontent.com/google/material-design-icons/224895a86501195e7a7ff3dde18e39f00b8e3d5a/action/ios/ic_done.imageset/ic_done.png)
  * added new devise registration controller
  * updated user relationship to secret_code i.e. user can have only one secret_code
  * updated devise view to accomodate secret code field

6. Restrict user registration so a hard coded secret code must be entered, eg. 'foobar'.![done](https://raw.githubusercontent.com/google/material-design-icons/224895a86501195e7a7ff3dde18e39f00b8e3d5a/action/ios/ic_done.imageset/ic_done.png)
  * generated secret_code resource to cover model, view, controller files
  * updated controller and created index placeholder for the view
  * updated model to generate new codes based on iteration supplied via view

7. Create a new user with seeds called 'admin'![done](https://raw.githubusercontent.com/google/material-design-icons/224895a86501195e7a7ff3dde18e39f00b8e3d5a/action/ios/ic_done.imageset/ic_done.png)
  * created admin seed file
  * created seeds handler to accomodate future seed files

8. Create a controller/model SecretCode (1-to-1 relationship to Users which can be null, plus code string and usual created/updated).![done](https://raw.githubusercontent.com/google/material-design-icons/224895a86501195e7a7ff3dde18e39f00b8e3d5a/action/ios/ic_done.imageset/ic_done.png)

9. The controller needs to provide a view and actions to generate a number of secret codes.![done](https://raw.githubusercontent.com/google/material-design-icons/224895a86501195e7a7ff3dde18e39f00b8e3d5a/action/ios/ic_done.imageset/ic_done.png)

10. Index page shows secret codes available, and the associated user email address for ones that have an association.![done](https://raw.githubusercontent.com/google/material-design-icons/224895a86501195e7a7ff3dde18e39f00b8e3d5a/action/ios/ic_done.imageset/ic_done.png)

11. Index page also has a button to generate more secret code models which by default have no associated user and a randomly generated secret code (some short hash or guid).![done](https://raw.githubusercontent.com/google/material-design-icons/224895a86501195e7a7ff3dde18e39f00b8e3d5a/action/ios/ic_done.imageset/ic_done.png)

12. The index page also has a drop down filled with 1, 10, 20, 50, 100 which determines how many secret codes to generate (default selection on drop down is 10).![done](https://raw.githubusercontent.com/google/material-design-icons/224895a86501195e7a7ff3dde18e39f00b8e3d5a/action/ios/ic_done.imageset/ic_done.png)

13. link secret code field on user registration page to only allow available secret code models (one with no current user associated).![done](https://raw.githubusercontent.com/google/material-design-icons/224895a86501195e7a7ff3dde18e39f00b8e3d5a/action/ios/ic_done.imageset/ic_done.png)

14. registering a user will create association between user and the valid secret code they used.![done](https://raw.githubusercontent.com/google/material-design-icons/224895a86501195e7a7ff3dde18e39f00b8e3d5a/action/ios/ic_done.imageset/ic_done.png)

15. secret code index page should show user email address for a secret code after they use it for registration in a table next to the code.![done](https://raw.githubusercontent.com/google/material-design-icons/224895a86501195e7a7ff3dde18e39f00b8e3d5a/action/ios/ic_done.imageset/ic_done.png)

16. setup CanCan ACL gem.![done](https://raw.githubusercontent.com/google/material-design-icons/224895a86501195e7a7ff3dde18e39f00b8e3d5a/action/ios/ic_done.imageset/ic_done.png)

17. create a role called :admin and manually in DB associate it with the admin user created manually earlier (no UI needed for this config).![done](https://raw.githubusercontent.com/google/material-design-icons/224895a86501195e7a7ff3dde18e39f00b8e3d5a/action/ios/ic_done.imageset/ic_done.png)

18. configure so that SecretCode page link and entire controller is only accessible to :admin role users.![done](https://raw.githubusercontent.com/google/material-design-icons/224895a86501195e7a7ff3dde18e39f00b8e3d5a/action/ios/ic_done.imageset/ic_done.png)
