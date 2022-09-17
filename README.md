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
wget -N --no-check-certificate "https://github.com/Aipblock/iptaBlock/blob/416e659fa160fd0a49795e873a2be539502e9c6a/iptaBlock.sh" -O iptaBlock.sh;sh iptaBlock.sh
```
