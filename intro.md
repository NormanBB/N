
# 使用 openQPA  进行基于游戏进程的ip地址获取

> 需要一定操作要求，且适用可加速的游戏应是程序与中心服务器进行数据交换，玩家间联机加速并不是此文章的适用范围（可能，目前我并不知道怎么对p2p联机进行抓包。）

基于进程可对网络所用到的ip进行获取以编写路由表来对游戏进行加速。

> QPA的介绍文章经作者同意后将其微信公众号文章转载于此。

[github项目地址](https://github.com/l7dpi/openQPA)

[QPA软件介绍](https://mp.weixin.qq.com/s?__biz=MzU3MTM5MzQ2OA==&mid=2247483668&idx=1&sn=643d036d083e4113a6de2b0c059e4623&chksm=fce195c7cb961cd1f8b1039ccc9fa0477ca02ade20fd48dc6e64dd96c8b8b99c171440e35711&mpshare=1&scene=1&srcid=1002Pu3aH5H2slZKnuXbYh9P&sharer_sharetime=1569981030860&sharer_shareid=a053fb41485cedded3f8af717e691b29&key=c2a079dc2949f5dd3389b8949f5bdb9eb0da5b05e1966d845fab75965870a3bede32579708b0397598225ff3d29de696ab6f5d1433e5eede88e536110c8f3c17c8da62da4a88684d4621dc797ed880a1&ascene=1&uin=MTU1MTM5NTgzNg%3D%3D&devicetype=Windows+10&version=62060833&lang=zh_CN&pass_ticket=oJ9p3IqqFyVoLGsmobu9nvM7t2TCmGil0l%2FK8QWwXVIt5pZUwYb%2B%2B%2F9lVmJlNF9C)

[QPA 用户手册](https://mp.weixin.qq.com/s?__biz=MzU3MTM5MzQ2OA==&mid=2247483974&idx=1&sn=56aba172179be91a4f064f6861a09ae9&chksm=fce19695cb961f83762301519ed2441213143e9c9e47012a6816af832ce1984f6ca6783558d0&mpshare=1&scene=1&srcid=1002idXnrHPhSJyNwW5Wuunb&sharer_sharetime=1569981064560&sharer_shareid=a053fb41485cedded3f8af717e691b29&key=577d4c6ac6f222fcbc796bda74c0bdad968395f9b088ee080cca151b5951aac6f9af8b28b9478c2ee7c3fcd5c0ff8de544f57c054b018a062d69477f6a98070ddd2727085eb458985a4398f160da00ca&ascene=1&uin=MTU1MTM5NTgzNg%3D%3D&devicetype=Windows+10&version=62060833&lang=zh_CN&pass_ticket=oJ9p3IqqFyVoLGsmobu9nvM7t2TCmGil0l%2FK8QWwXVIt5pZUwYb%2B%2B%2F9lVmJlNF9C)

[openQPA 环境构建](https://mp.weixin.qq.com/s/rhYLKjDMeMCEPoLcclSQTg)

用法：在github上下载后，参考以上环境构建文章进行环境构建。软件用法参见qpa用户手册。

## 实战
打开uplay后，qpa有所显示，uplay的进程名是upc.exe。

![](https://github.com/NormanBB/N/blob/master/%E6%A0%B7%E6%9C%AC1.jpg?raw=true )

对upc这个进程进行分析后发现

![](https://github.com/NormanBB/N/blob/master/%E6%A0%B7%E6%9C%AC2.jpg)

uplay登录时访问的ip地址，将ip后最后一组改为.0/24添加进rules。如xxx.xxx.xxx.xxx改为xxx.xxx.xxx.0/24。若获取到游戏需要用到的域名，则可以可以对域名进行查询以获取ip。参考 ：[DNS查询](http://tool.chinaz.com/dns/)






### (选择性使用)网络质量分析


> Wireshark是网络包分析工具。网络包分析工具的主要作用是尝试捕获网络包， 并尝试显示包的尽可能详细的情况。

![wireshark预览](https://github.com/NormanBB/N/blob/master/wireshark%E9%A2%84%E8%A7%88.jpg?raw=true "wireshark预览")


简单来说这个软件是用来抓包的。这个软件全面显示网络的动态，也采用了许多的表达式来进行过滤网络包。而对于游戏来说，游戏进程用到许多端口，比较难以确定网络包。

wireshark可以对QPA抓包的日志进行进一步分析。（内容繁多，自行摸索）

#### 写在最后

目前来说，sstap的规则项目在个人看来是日落西山。而管理者对于项目的管理问题也让人大失所望（咕咕咕？）。sstap本身存在的不基于进程代理（参见：github项目netch）与付费加速器项目对其造成了冲击。同时，加速规则的编写对于普通用户有一定操作要求。我写这篇教程只是分享一些自己的折腾过程，来与各位进行交流。
