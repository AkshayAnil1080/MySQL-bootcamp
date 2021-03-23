## MySQL Course Goorm.io Signup Instructions

- Sign up for a free goorm account, [here](https://accounts.goorm.io/signup).
	- Be sure to use a valid email, you will need to confirm the email address in order to sign up.
- Log in to Goorm.io, if you are not already logged in.
- Go to your IDE dashboard, [here](https://ide.goorm.io/my), this is where you will create and manage your containers. Please bookmark this page, you will use it often.
- To create a new container, click on the "+ New Container" button in the top right corner of your IDE dashboard.
	- That button will take you [here](https://ide.goorm.io/container/new).
- Input a container name, e.g., 'mysql'
- Select the region which is closest to your location.
- Go down to "Stack" and click on "Node.js".
- Go down to Additional module/package and check the option for: "Customization for Udemy Course - The Ultimate MySQL Bootcamp: Go from SQL Beginner to Expert".
	- This will install mysql and enable the mysql-ctl command, so you can leave those other two options unchecked.
- Click the "Create" button in the top right corner of the navigation bar.
- Wait a few minutes for your container to be created and configured.
- When the container has been created you will see a green circle around a check mark, now click on the "Run container" button.
- You are now inside of your goorm container. When you're done working you can close this window, but if you want to return to your container you will need to go back to your IDE 

mysql-ctl start

mysql-ctl stop

mysql-ctl cli
## CODE:
### Creating Databases
	mysql-ctl cli;   - Start the CLI:
	show databases;  - List available databases:
	CREATE DATABASE database_name; - The general command for creating a database
	Eg.
	CREATE DATABASE soap_store; 
### Drop a database:
	DROP DATABASE database_name;   - Once you drop a database, it's gone!


