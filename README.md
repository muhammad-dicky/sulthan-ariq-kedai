# sulthan-ariq-kedai
![image](https://user-images.githubusercontent.com/58357765/220168268-310a1cc1-9a96-4a18-af2b-25c4b1808bb4.png)
![image](https://user-images.githubusercontent.com/58357765/220168396-82721621-d2e8-469f-8587-9c5f2764a48c.png)


# How to use
===

What is this?
---

How do I use this?
---
1. Download or Branch Project
2. Create a new database, user and password and import the db/project_database.sql file into the new database
3. Edit application/config/database.php and update the database name, user and password
4. (Optional) Rename htaccess.txt to .htaccess
5. Edit application/config/config.php and make sure to update the following settings: base\_url, index\_page (you can remove index.php if you're using a .htaccess file), encryption\_key, sess\_cookie\_name, csrf\_token\_name and csrf\_cookie\_name
6. The app should be up and running by now, you can login using email admin@admin.com with password "admin123456" (without quotes)
7. Open localhost/project_name

Ok, but there are things I don't like in here, how can I change them?
---
- You can use config/app.php to define configuration that is used everywhere
- Validation Rules are set in config/form\_validation.php, you can either delete or add more here
- The App\_Form\_Validation.php file has custom validations already in place, you can either delete or add new ones there
- The App_Controller.php file is a good place to start if you want to change how this template works


---


Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
