# Direwolf Software TNC
https://github.com/wb2osz/direwolf/
## Installation
https://github.com/wb2osz/direwolf/#linux---using-apt-get-debian-flavor-operating-systems

** NOTE ** The version currently available on Raspberry Pi OS (Raspbian) is one minor version behind the latest (1.6).  
To get version 1.7, you will need to follow the custom build instructions on Direwolf's GitHub README

```bash
sudo apt update
sudo apt install direwolf
sudo apt install tmux
```

## Configuration

1. Copy `direwolf.conf` from this repository to your home directory (/home/pi/)
2. Copy `direwolf.service` to `/etc/systemd/system/`
3. Run `sudo systemctl enable direwolf`

## Usage
TODO:  Test mode, daemon mode, etc, tmux reattach from systemd service

## Official Documentation
https://github.com/wb2osz/direwolf/tree/master/doc