Shutterstock
Explore

CI/CD (Continuous Integration/Continuous Deployment): A method to frequently deliver apps to customers by introducing automation into the stages of app development. It involves automatically building, testing, and deploying code changes.

Containerization: The practice of packaging software code with all its necessary components (libraries, frameworks) so it runs consistently on any infrastructure. Docker is the most popular tool for this.

Infrastructure as Code (IaC): Managing and provisioning computer data centers through machine-readable definition files (like Terraform or Ansible) rather than physical hardware configuration.

Microservices: An architectural style that structures an application as a collection of services that are highly maintainable, testable, loosely coupled, and independently deployable.

Monitoring and Logging: The practice of tracking the performance and health of applications and infrastructure (using tools like Prometheus or ELK Stack) to detect issues before they affect users.

2. Process: How I Completed This Assignment
To complete this assignment, I first created a working directory on my local machine. I wrote a Dockerfile defining a Linux environment with tools like vim and git. I then built the image to ensure it worked, initialized a Git repository, and pushed it to GitHub.

Below are the exact terminal commands used:

Docker Build and Test:

Bash

# Build the image from the current directory
docker build -t basic-linux-ops .

# Run the container interactively to verify tools are installed
docker run -it basic-linux-ops
# (Inside container, I ran 'git --version' and 'vim --version' to verify)
Git Version Control:

Bash

# Initialize a new git repository
git init

# Add the files to the staging area
git add Dockerfile README.md

# Commit the changes
git commit -m "Initial commit: Added Dockerfile and README"

# Create a main branch
git branch -M main

# Link to the remote GitHub repository (Replace URL with actual repo)
git remote add origin https://github.com/yourusername/basic-linux-ops.git

# Push the code
git push -u origin main
3. Learning Outcomes
How does this help learn DevOps, Linux, Git, and Docker?

Linux: Writing the RUN commands in the Dockerfile requires knowing how to update package managers (apt-get) and install software via the command line, which is the foundation of server management.

Docker: It teaches the lifecycle of a container: writing a recipe (Dockerfile), baking the cake (Building the Image), and eating the slice (Running the Container).

Git: It reinforces the "Save Game" mechanic of coding. git add and commit create checkpoints, and push backs them up to the cloud.

DevOps Synergy: This assignment simulates the very first step of a DevOps pipeline: creating a reproducible environment that can be version-controlled and shared with a team.