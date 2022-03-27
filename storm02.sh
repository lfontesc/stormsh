#! /bin/sh

echo $'\n ## running script post install storm02 \n'

add_pgadmin_docker(){
    echo $'\n ## add pgadmin docker \n'
    docker pull dpage/pgadmin4
    docker run -p 80:80 --name pgadmin --restart unless-stopped -e "PGADMIN_DEFAULT_EMAIL=lfonteesc@gmail.com" -e "PGADMIN_DEFAULT_PASSWORD=admin" -d dpage/pgadmin4
}

add_pgadmin_docker

echo $'\n ## Success Script Install ## \n'
