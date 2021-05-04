# Final project

For our final project we were tasked with deploying a prebuilt application using technologies we have learned over the course of our training. These technologies include Terraform, Kubernetes, Docker, Jenkins, and AWS.

# Requirements

You will need to plan, design, and implement a solution for automating the development workflows and deployments of this application. As part of your final deliverable, you will need to discuss the project in a presentation and demonstrate these workflows.

Using what you have learned consider the following:

What tools will work for you best? For example: Terraform, Kubernetes, Ansible etc. There is no restrictions or requirements on which ones to use; you should decide which you feel are most appropriate and justify their use.

Multiple Environment support: How can a developer test their new features on an environment before merging their changes to the main branch?

How can changes on the GitHub repository automatically build and deploy to testing and live environments?

Running costs. What are your monthly estimates? How could they be improved?

# Test Analysis ????????

Text

# Tech Stack used

Text

# Trello Board

![My Trello Board](images/TrelloBoard.jpg)

This is a link to my [Trello][MyTrello]! Board:

[MyTrello]: https://trello.com/b/0i1GmcuQ/final-project

# Database ??????

Text

# Software Architecture

Text

# Pipeline

![Development Pipeline](images/FinalProjectPipeline.jpg)

Here is an Image of our pipeline, this diagram shows how we have organised the repo and then how one the application files have been pushed to main how they then filter through the said technologies we have used.

# CI/CD pipeline

The pipeline is automated with a Webhook from github and integrated using a Jenkinsfile, from there we use docker commands, docker-compose for a unified configuration, docker swarm for deployment and Ansible for configuration management.<br>

It follows this steps:</p>

![Microservice Flowchart](image.jpg)

# Risk Analysis


| Description |Evaluation| Likelihood  | Impact Level | Responsability |  Response  |  Control Measures  
| :---        | :----:   |  :----:     |  :----:      |  :----:        |  :----:    |---:
| Description |Evaluation| Likelihood  | Impact Level | Responsability |  Response  |  Control Measures  


# Acknowledgements and contributions


Docker-compose ?? (Probably not)

No

Terraform 2
Ansible 3
Kubernetes 4 (Next week) 
AWS 1



Yes, I aknowledge and contribute.
