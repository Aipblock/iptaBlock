# iptaBlock
Block access to certain purpose websites based on a simple script

## System environment
- Debian10+

## Instructions for use
### 1. install iptables
```ssh
apt-get install iptables
```

### 2. execute script
```ssh
wget -N --no-check-certificate "https://raw.githubusercontent.com/Aipblock/iptaBlock/main/iptaBlock.sh" -O iptaBlock.sh;sh iptaBlock.sh
```
