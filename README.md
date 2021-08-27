# ft_inception
Basically the main objective of the project is to launch 3 containers with a specific service, such as mariadb, wordpress and nginx. Then, link them to work together.

 [*To understand a little more about the project, I have created a Notion with basic information.*!](http://google.com)

## Make rules 
<img src="https://github.com/abello-r/ft_inception/blob/master/git_pictures/make_rules.png">

### Make run

*What is happening is that the makefile is communicating with the docker-compose, which in turn communicates with the dockerfiles of the services, and lifts everything together.*

<img src="https://github.com/abello-r/ft_inception/blob/master/git_pictures/make_run.png">

### Make clean

<img src="https://github.com/abello-r/ft_inception/blob/master/git_pictures/make_clean.png">

### Make fclean

<img src="https://github.com/abello-r/ft_inception/blob/master/git_pictures/make_fclean.png">

### This is what the final service looks like, all deployed from a virtual machine

<img src="https://github.com/abello-r/ft_inception/blob/master/git_pictures/wordpress.png">
