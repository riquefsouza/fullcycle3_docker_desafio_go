# fullcycle3_docker_desafio_go
Fullcycle3 Docker Desafio Go

Obs: Não foi adicionado no github o binário da aplicação go.

https://hub.docker.com/r/riquefsouza/codeeducation

https://github.com/riquefsouza/fullcycle3_docker_desafio_go


go mod init riquefsouza/desafio_go

go build -v -o app

docker build -t riquefsouza/codeeducation .

docker run riquefsouza/codeeducation

