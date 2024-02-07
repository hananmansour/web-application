<h3>in this project:</h3><br>
- first using terraform to create 3 Ec2 instances with security group allow ports 8080,3000.<br>

- then connect to instances and make SSH key authentication between them.<br>

-connect to Jenkins server, create freestyle project, and copy GitHub code URL to add it to the project and make build steps in the project.<br>
- A build step for creating a docker image and pushing it to the docker hub.<br>
- A build step to run an Ansible playbook to run the container in the web app server.<br>

-finally, access the app through the public IP of the web app server and container port.<br>


https://github.com/hananmansour/web-application/assets/66485038/d59a8434-bdf1-4dea-b4f1-9c5a631e6a58








