# Answers to the exercises

## Exercise 3.1

Config: https://github.com/karoteeni110/devops-docker-course/commit/5e64f95d14a4148684dd5b52e41900c00d959ead

Successful build: https://github.com/karoteeni110/devops-docker-course/actions/runs/5157347905/jobs/9289627857

## Exercise 3.2

Config: https://github.com/karoteeni110/Perplexity/blob/master/.github/workflows/docker-image.yml

Successful build: https://github.com/karoteeni110/Perplexity/actions/runs/5162643883

## Exercise 3.6

Before optimization:

```
REPOSITORY      TAG       IMAGE ID       CREATED        SIZE
ex36-frontend   latest    696d5a2ddba4   27 hours ago   602MB
ex36-backend    latest    d2d346568b88   28 hours ago   1.07GB
```

After:

```
REPOSITORY      TAG       IMAGE ID       CREATED              SIZE
ex36-backend    latest    d12440b259e6   About a minute ago   25.4MB
ex35-frontend   latest    277c55f60195   4 minutes ago        599MB
```
