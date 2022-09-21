<h3>in this project:</h3><br>
- first using terraform to create 3 Ec2 instances with security group allow ports 8080,3000.<br>

- then connect to instances and make ssh key authentication between them.<br>

-connect to Jenkins server, create freestyle project, and copy GitHub code URL to add it to the project and make build steps in the project.<br>

- build step for creating docker image and push it to docker hub.<br>
- build step to run an ansible playbook to run the container in the web app server.<br>

-finally, access the app through the public IP of the web app server and container port.<br>

