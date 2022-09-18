# iptaBlock
Block access to certain purpose websites based on a simple script

- Recommendation: Deploy on the endpoint server

## System environment
- Debian10+

## Effect verification
### 1. before deploying the script
You can visit the following website
```
news.agentm.tw
```
### 2. After deploying the script
Revisit the site you just visited
```
news.agentm.tw
```

## Instructions for use
### 1. install iptables
```ssh
apt-get install iptables
```

### 2. execute script
```ssh
wget -N --no-check-certificate "https://raw.githubusercontent.com/Aipblock/iptaBlock/main/iptaBlock.sh" -O iptaBlock.sh;sh iptaBlock.sh
```
