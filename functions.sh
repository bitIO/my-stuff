# DOCKER
clearDockerLog() {
  dockerLogFile=$(docker inspect $1 | grep -G '\"LogPath\": \"*\"' | sed -e 's/.*\"LogPath\": \"//g' | sed -e 's/\",//g')
  rmCommand="rm $dockerLogFile"
  screen -d -m -S dockerlogdelete ~/Library/Containers/com.docker.docker/Data/com.docker.driver.amd64-linux/tty
  screen -S dockerlogdelete -p 0 -X stuff $"$rmCommand"
  screen -S dockerlogdelete -p 0 -X stuff $'\n'
  screen -S dockerlogdelete -X quit
}
