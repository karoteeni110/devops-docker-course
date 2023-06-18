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
ex35-frontend   latest    fc27fb78524d   36 minutes ago   611MB
ex35-backend    latest    9a92f96a1681   36 minutes ago         1.07GB
```

After:

```
REPOSITORY      TAG       IMAGE ID       CREATED              SIZE
ex36-frontend   latest    45dac98fea37   36 minutes ago       609MB
ex36-backend    latest    66c557098ef1   12 days ago         1.07GB
```

## Exercise 3.7

Before:

```
REPOSITORY      TAG       IMAGE ID       CREATED              SIZE
ex36-frontend   latest    45dac98fea37   36 minutes ago       609MB
ex36-backend    latest    66c557098ef1   12 days ago         1.07GB
```

After:

```
REPOSITORY      TAG       IMAGE ID       CREATED          SIZE
ex37-frontend   latest    a56190526852   2 minutes ago       338MB
ex37-backend    latest    11f50a349530   12 seconds ago      447MB
```
