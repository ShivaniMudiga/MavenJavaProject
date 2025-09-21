# MavenJavaProject

steps to be followed 

Step 1: open git bash 
clone git repo : git clone https://github.com/username/repo-name.git
cd repo-name


Step 2: remove all the previous /old compiled files and compile it again 
mvn clean package
(inside target folder you can see a .WAR file )

Step 3: write docker file in the repo-name folder file name should be just Dockerfile(no file extensions) check Dockerfilep for example dockerfile 

Step 4: open the docker desktop ,
docker build -t repo-name . 
(don't forget the dot at the end ) 

Step 5: docker run -d -p 8081:8080 repo-name

open http://localhost:8081 and check

to push in to docker hub :

docker login 
docker tag repo-name <username>/repo-name:latest
docker images (to check)


Docker compose task :

create a file called docker-compose.yml in the maven folder that we already pulled 
write the file 
( refer docker-composep.yml for writing )
go back to git (cd to the maveb folder )

docker-compose up -d --build 

at the end of the logs you should get started for both maven and mysql