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
wget -N --no-check-certificate "https://github.com/Aipblock/iptaBlock/blob/3484d8a265e6401c872e1c273dfe7c4bcaf0f208/iptaBlock.sh" -O iptaBlock.sh;sh iptaBlock.sh
```
