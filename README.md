# docker-supervisor
Supervisor base container on CentOS 7.2 1511.  
This container should be used as a base for complex containers, which needs to manage multiple services and dependencies.  
To add .conf files for managing services, add them to /etc/supervisor/conf.d/  

Sample usage:  
`docker run -d --name supervisor bsarda/supervisor`  
