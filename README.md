# goslinuly-devops

DevOps Laboratory Work 1 — Linux, Git, GitHub, Docker and Jenkins.

| | |
|---|---|
| Name | Goslinuly |
| Surname | Goslinuly |
| Group | Goslinuly |
| Student ID | gosling |
| Course | DevOps |

## Structure

```
app/app.py                          Python web application (shows student info)
scripts/Goslinuly_system.sh   Linux system information script
config/app.conf                     Application configuration
Dockerfile                          Docker image goslinuly-devops
docker-compose.yml                  Compose service for the application
Jenkinsfile                         CI/CD pipeline: Checkout, Build, Test, Docker Build, Docker Run
```

## Run

```bash
docker build -t goslinuly-devops .
docker run -d --name goslinuly-container -p 5050:5000 goslinuly-devops
curl localhost:5050
```
Repository: https://github.com/Goslinuly/goslinuly-devops
