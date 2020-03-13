# DOCKER
clearDockerLog() {
  dockerLogFile=$(docker inspect $1 | grep -G '\"LogPath\": \"*\"' | sed -e 's/.*\"LogPath\": \"//g' | sed -e 's/\",//g')
  rmCommand="rm $dockerLogFile"
  screen -d -m -S dockerlogdelete ~/Library/Containers/com.docker.docker/Data/com.docker.driver.amd64-linux/tty
  screen -S dockerlogdelete -p 0 -X stuff $"$rmCommand"
  screen -S dockerlogdelete -p 0 -X stuff $'\n'
  screen -S dockerlogdelete -X quit
}

clearDocker() {
  printf "🔥 🔥 🔥 \e[93m\nWARNING: This command will remove EVERY\n"
  printf "  * container\n"
  printf "  * image\n"
  printf "  * volume\n"
  printf "  * network\n"
  printf "====================================================\n\e[0m"
  printf "Type \e[91myes\e[0m to continue with the process: \e[2m"
  read CONTINUE
  printf "\e[0m"
  if [ "$CONTINUE" != "yes" ]; then
    echo "Reset has been canceled as per your request"
    exit 0
  fi
  docker stop $(docker ps -a -q)
  docker rm -f $(docker ps -a -q)
  docker rmi $(docker images -q) --force
  docker network rm $(docker network ls -q)
  docker volume rm $(docker volume ls -q)
}
