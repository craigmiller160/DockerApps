#!/bin/bash
dpkg -s jq 1>/dev/null 2>/dev/null
if [[ $? -ne 0 ]]; then
	echo "Installing JQ package"
	sudo apt install jq
else
	echo "JQ package already installed"
fi



compose_version=$(curl https://api.github.com/repos/docker/compose/releases/latest | jq .name -r)
echo "Latest Docker-Compose Version: $compose_version"
output="/usr/bin/docker-compose"
echo "Downloading and installing Docker-Compose"
sudo curl -L https://github.com/docker/compose/releases/download/$compose_version/docker-compose-$(uname -s)-$(uname -m) -o $output
sudo chmod +x $output
echo "Installed Docker-Compose Version: $(docker-compose --version)"
