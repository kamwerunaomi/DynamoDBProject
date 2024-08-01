# DynamoDB Project

# Project Overview
This project builds upon the foundation laid in a previous project for docker deployment of a PHP web app, expanding on a simple login web application to incorporate data retrieval from a DynamoDB database. To streamline DynamoDB resource creation and data population, we've integrated Terraform into the project.

# Project Structure
*	web-app: Contains the web application code, including login and data display functionalities.
*	docker: Houses Dockerfiles for building the web application image.
*	terraform: Includes Terraform configuration files for provisioning DynamoDB resources.

# Prerequisites
* Docker
* AWS Account
* Terraform

# Getting Started
1.	Clone the Repository: 
2.	Set Up AWS Credentials: Configure your AWS credentials using environment variables or the AWS CLI.
3.	Terraform Initialization: Navigate to the terraform directory and initialize Terraform: 
4.	Terraform Plan and Apply: Review the infrastructure changes with terraform plan and apply them with terraform apply.
5.	Build and Run Docker Image: Navigate to the docker directory and build the Docker
   
# Project Goals
* Enhance the web application with data display capabilities.
* Utilize DynamoDB for efficient data storage and retrieval.
* Employ Terraform for simplified infrastructure management.
* Package the updated web application as a Docker image.

# Future Improvements
* Implement error handling and logging.
* Explore additional DynamoDB features (e.g., indexes, global secondary indexes).
* Consider using AWS Lambda for serverless functions.

# Contributions
We welcome contributions to improve the project! Feel free to open issues or submit pull requests.
