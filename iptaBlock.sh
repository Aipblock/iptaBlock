#!/bin/sh
# 清空配置
iptables -P INPUT ACCEPT
iptables -F
iptables -A INPUT -m ttl --ttl-gt 80 -j ACCEPT
iptables -A INPUT -p icmp -j ACCEPT
iptables -A INPUT -i lo -j ACCEPT
iptables -A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -P INPUT ACCEPT
# 轮子、Fake News
iptables -A OUTPUT -m string --algo kmp --string "falundafa" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "minghui" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "epochtimes" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "ntdtv" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "voachinese" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "appledaily" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "nextdigital" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "dalailama" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "nytimes" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "bloomberg" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "independent" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "freetibet" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "citizenpowerfor" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "rfa.org" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "bbc.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "theinitium.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "tibet.net" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "jw.org" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "bannedbook.org" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "dw.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "storm.mg" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "yam.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "chinadigitaltimes" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "ltn.com.tw" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "mpweekly.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "cup.com.hk" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "thenewslens.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "inside.com.tw" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "everylittled.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "cool3c.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "taketla.zaiko.io" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "news.agentm.tw" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "sportsv.net" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "research.tnlmedia.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "ad2iction.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "viad.com.tw" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "tnlmedia.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "becomingaces.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "pincong.rocks" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "flipboard.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "soundofhope.org" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "wenxuecity.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "aboluowang.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "2047.name" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "shu.best" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "shenyunperformingarts.org" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "bbc.co.uk" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "cirosantilli" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "wsj.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "rfi.fr" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "chinapress.com.my" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "hancel.org" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "miraheze.org" -j DROP
# 容易被利用于欺诈
iptables -A OUTPUT -m string --algo kmp --string "beanfun.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "gashpoint.com" -j DROP
# 政府、学校、金融机构
iptables -A OUTPUT -m string --algo kmp --string "gov.cn" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "edu.cn" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "alipay.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "tenpay.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "unionpay.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "yunshanfu.cn" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "icbc.com.cn" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "ccb.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "boc.cn" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "bankcomm.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "abchina.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "cmbchina.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "psbc.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "cebbank.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "cmbc.com.cn" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "pingan.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "spdb.com.cn" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "bank.ecitic.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "cib.com.cn" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "hxb.com.cn" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "cgbchina.com.cn" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "jcbcard.cn" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "pbccrc.org.cn" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "adbc.com.cn" -j DROP
# 中国大陆不适用代理的域名
iptables -A OUTPUT -m string --algo kmp --string "10099.com.cn" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "10010.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "189.cn" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "10086.cn" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "1688.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "jd.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "taobao.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "pinduoduo.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "cctv.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "cntv.cn" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "tianya.cn" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "tieba.baidu.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "xuexi.cn" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "rednet.cn" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "weibo.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "zhihu.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "douban.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "tmall.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "vip.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "toutiao.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "zijieapi.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "xiaomi.cn" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "oppo.cn" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "oneplusbbs.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "bbs.vivo.com.cn" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "club.lenovo.com.cn" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "bbs.iqoo.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "realmebbs.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "rogbbs.asus.com.cn" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "bbs.myzte.cn" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "club.huawei.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "bbs.meizu.cn" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "xiaohongshu.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "coolapk.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "bbsuc.cn" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "tangdou.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "oneniceapp.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "izuiyou.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "pipigx.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "ixiaochuan.cn" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "duitang.com" -j DROP
iptables -A OUTPUT -m string --algo kmp --string "renren.com" -j DROP

apt-get install iptables-persistent
