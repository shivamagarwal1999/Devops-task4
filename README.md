This is an automation task where I have used GitHub, Jenkins ,Kubernetes, Docker platform to do continuous integration by uploading the project codes to GitHub and automate the process of deploying a website by creating custom Docker images using Dockerfile and creating dynamic Jenkins to perform a job.So, the applications will deploy on kubernetes with the help of jenkins Dynamic Cluster.
Problem Statement :
Create container image that has Linux and other basic configuration required to run Slave for Jenkins (example here we require kubectl to be configured). When we launch the job it should automatically start the job on slaves based on the label provided for a dynamic approach. Create a job chain of job1 & job2 using the build pipeline plugin in Jenkins.
Task Description :
1. Create a container image that has Linux and other basic configuration required to run Slave for Jenkins. ( example here we require kubectl to be configured )
2. When we launch the job it should automatically start the job on slaves based on the label provided for the dynamic approach.
3. Create a job chain of job1 & job2 using the build pipeline plugin in Jenkins
4. Job1: Pull the Github repo automatically when some developers push the repo to Github and perform the following operations as
 4.1 Create the new image dynamically for the application and copy the application code into that corresponding docker image
 4.2 Push that image to the docker hub (Public repository) ( Github code contains the application code and Dockerfile to create a new image )
5. Job2 ( Should be run on the dynamic slave of Jenkins configured with Kubernetes kubectl command): Launch the application on the top of the Kubernetes cluster performing following operations:
 5.1 If launching the first time then creates a deployment of the pod using the image created in the previous job. Else if deployment already exists then do a rollout of the existing pod making zero downtime for the user.
 5.2 If Application created the first time, then Expose the application. Else don't expose it.
