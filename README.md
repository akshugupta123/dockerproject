**Docker Static Website Setup Guide**

**Project Structure**
dockerproject/
│
├─ index.html
├─ Dockerfile

1. index.html
2. Dockerfile
3. Build Docker Image
Open vscode in your project folder: docker build -t mywebpage .
4. Run Docker Container
Map the container port 80 to a free host port (example: 8083):
docker run -d -p 8083:80 mywebpage
5. Check Running Containers
   docker ps
CONTAINER ID   IMAGE          COMMAND                  CREATED          STATUS          PORTS                                     NAMES
166483e81993   mywebpage3     "/docker-entrypoint.…"   7 minutes ago    Up 7 minutes    0.0.0.0:8083->80/tcp, [::]:8083->80/tcp   cranky_neumann
   6. Open Website in Browser
      http://localhost:8083/
      7. Stop & Remove Containers (Optional)
         docker stop <container_id>
docker rm <container_id>
8. Remove Docker Images (Optional)
docker rmi mywebpage
If a container is using the image, stop and remove it first.
9. Clean All Stopped Containers and Unused Images (Optional)
docker container prune -f
docker image prune -a -f
