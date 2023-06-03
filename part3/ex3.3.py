#!/usr/bin/python3
import os
import shutil
import subprocess
import sys

def clone_repository(github_repo):
    subprocess.run(["git", "clone", "git@github.com:" + github_repo + ".git"])

def build_docker_image(github_repo, docker_repo):
    os.chdir(github_repo)
    subprocess.run(["docker", "build", "-t", docker_repo, "."])

def publish_to_docker_hub(repository):
    subprocess.run(["docker", "login"])
    subprocess.run(["docker", "push", repository])

if __name__ == "__main__":
    # Check if the required arguments are provided
    if len(sys.argv) != 3:
        print("Usage: ./ex3.3.py <GitHub Username>/<Repo Name> <Docker Hub Username>/<Repo Name>")
        sys.exit(1)

    # Parse the arguments
    github_repo = sys.argv[1]
    dockerhub_repo = sys.argv[2]

    # Clone the GitHub repository
    clone_repository(github_repo)

    # Build the Docker image
    build_docker_image(github_repo.split("/",1)[-1], dockerhub_repo)

    # Publish the Docker image to Docker Hub
    publish_to_docker_hub(dockerhub_repo)

    print("Successfully published the Docker image to Docker Hub.")

