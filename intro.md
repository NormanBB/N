
## 使用 openQPA 与 wireshark 进行ip地址获取或网络质量分析


> Wireshark是网络包分析工具。网络包分析工具的主要作用是尝试捕获网络包， 并尝试显示包的尽可能详细的情况。

![wireshark预览](https://github.com/NormanBB/N/blob/master/wireshark%E9%A2%84%E8%A7%88.jpg?raw=true "wireshark预览")


简单来说这个软件是用来抓包的。这个软件全面显示网络的动态，也采用了许多的表达式来进行过滤网络包。而对于游戏来说，游戏进程用到许多端口，比较难以确定网络包。

openqpa（简称：QPA）则能帮助我们解决这个问题。

> QPA的介绍文章经作者同意后将其微信公众号文章转载于此。

[github项目地址](https://github.com/l7dpi/openQPA)

[QPA软件介绍](https://mp.weixin.qq.com/s?__biz=MzU3MTM5MzQ2OA==&mid=2247483668&idx=1&sn=643d036d083e4113a6de2b0c059e4623&chksm=fce195c7cb961cd1f8b1039ccc9fa0477ca02ade20fd48dc6e64dd96c8b8b99c171440e35711&mpshare=1&scene=1&srcid=1002Pu3aH5H2slZKnuXbYh9P&sharer_sharetime=1569981030860&sharer_shareid=a053fb41485cedded3f8af717e691b29&key=c2a079dc2949f5dd3389b8949f5bdb9eb0da5b05e1966d845fab75965870a3bede32579708b0397598225ff3d29de696ab6f5d1433e5eede88e536110c8f3c17c8da62da4a88684d4621dc797ed880a1&ascene=1&uin=MTU1MTM5NTgzNg%3D%3D&devicetype=Windows+10&version=62060833&lang=zh_CN&pass_ticket=oJ9p3IqqFyVoLGsmobu9nvM7t2TCmGil0l%2FK8QWwXVIt5pZUwYb%2B%2B%2F9lVmJlNF9C)

[QPA 用户手册](https://mp.weixin.qq.com/s?__biz=MzU3MTM5MzQ2OA==&mid=2247483974&idx=1&sn=56aba172179be91a4f064f6861a09ae9&chksm=fce19695cb961f83762301519ed2441213143e9c9e47012a6816af832ce1984f6ca6783558d0&mpshare=1&scene=1&srcid=1002idXnrHPhSJyNwW5Wuunb&sharer_sharetime=1569981064560&sharer_shareid=a053fb41485cedded3f8af717e691b29&key=577d4c6ac6f222fcbc796bda74c0bdad968395f9b088ee080cca151b5951aac6f9af8b28b9478c2ee7c3fcd5c0ff8de544f57c054b018a062d69477f6a98070ddd2727085eb458985a4398f160da00ca&ascene=1&uin=MTU1MTM5NTgzNg%3D%3D&devicetype=Windows+10&version=62060833&lang=zh_CN&pass_ticket=oJ9p3IqqFyVoLGsmobu9nvM7t2TCmGil0l%2FK8QWwXVIt5pZUwYb%2B%2B%2F9lVmJlNF9C)

[openQPA 环境构建](https://mp.weixin.qq.com/s/rhYLKjDMeMCEPoLcclSQTg)

用法：在github上下载后，参考以上环境构建文章进行环境构建。软件用法参见qpa用户手册。