![Logo](https://raw.githubusercontent.com/neodevpro/neodevhost/master/logo.png)

    
    
    
## The Powerful Friendly Uptodate AD Blocking Hosts 最新强大而友善的去广告


[![Build Status](https://img.shields.io/github/workflow/status/neodevpro/neodevhost/CI/master)](https://github.com/neodevpro/neodevhost/actions?workflow=CI)<br/>
[![Last commit](https://img.shields.io/github/last-commit/neodevpro/neodevhost.svg)](https://github.com/neodevpro/neodevhost/commit/master)<br/>
[![license](https://img.shields.io/github/license/neodevpro/neodevhost.svg)](https://github.com/neodevpro/neodevhost/blob/master/LICENSE)

```
Total ad / tracking block list 屏蔽追踪广告总数: 113342

Total allowlist list 允许名单总数: 1468

Total combine list 结合总数： 113212

Total deadblock list 失效屏蔽广告域名： 25243

Total deadallow list 失效允许广告域名： 109

Update 更新时间: 2020-10-06
```
### UPTODATE 保持最新<br/>
    Merge everyhours　每小时更新
### POWERFUL　 强大有效<br/>
    To block all ad / tracking  有效拦截广告追踪　
### FRIENDLY　友善使用<br/>
    Easy to use and welcome to report issues　简单使用欢迎回报问题

## Supported Platform 支持平台

```
-Windows
-Android
-Linux
-Mac OS
-Openwrt
-etc
```
### Supported adblocker 广告拦截器
```
-Pihole
-Adaway
-Adblocker/Adguard
-etc
``` 

## Download 下载
### Full version (With Dead Domain inside) 完整版（包含过期域名）：
Number of Domain 域名数目： 113212

Format 格式 | Compatible with 适用于 | Raw | 国内加速链接  
--------- |:-------------:|:-------------:|:-------------:
Host | Pihole，Adaway，hBlock ... |[link](https://raw.githubusercontent.com/neodevpro/neodevhost/master/host) | [link](https://neodev.team/host)
Adblocker | uBlock，Adguard ... |[link](https://raw.githubusercontent.com/neodevpro/neodevhost/master/adblocker) | [link](https://neodev.team/adblocker) 
Dnsmasq | Dns ... |[link](https://raw.githubusercontent.com/neodevpro/neodevhost/master/host_dnsmasq.conf) | [link](https://neodev.team/host_dnsmasq.conf)

### Lite version (Without Dead Domain inside) 精简版（不包含过期域名）：

Number of Domain 域名数目： 87974

Format 格式 | Compatible with 适用于 | Raw | 国内加速链接  
--------- |:-------------:|:-------------:|:-------------:
Host | Pihole，Adaway，hBlock ... |[link](https://raw.githubusercontent.com/neodevpro/neodevhost/master/lite_host) | [link](https://neodev.team/lite_host)
Adblocker | uBlock，Adguard ... |[link](https://raw.githubusercontent.com/neodevpro/neodevhost/master/lite_adblocker) | [link](https://neodev.team/lite_adblocker) 
Dnsmasq | Dns ... |[link](https://raw.githubusercontent.com/neodevpro/neodevhost/master/lite_host_dnsmasq.conf) | [link](https://neodev.team/lite_host_dnsmasq.conf)

## How To Use 如何使用
```
1.Download both files/copy link of files
2.Add host and whitelist file/link into adblocker
3.Update the data source in the app
```
```
1.下载两个文件/复制下载链接
2.添加文件或者下载链接到广告拦截器
3.更新数据规则
```
## Pihole Installation 安装导入教程

### Import and Installation 导入和安装<br/>

1.Login to pihole website<br/>
2.Go to Groupmanagement > Adlists<br/>
3.copy the NEODEV AD host link into "Address:"<br/>
4.open terminal<br/>
5. Run the following command :<br/>
```
sudo -i
sudo curl -s https://raw.githubusercontent.com/neodevpro/neodevhost/master/install.sh | bash
pihole -g
```
6.Wait for 20 mins around  <br/>
7.Then it will import both NEODEV host and whitelist into your Pihole <br/>


### Remove and Uninstall 移除和卸载<br/>
sh: line 177: syntax error near unexpected token `)'
263
./host.sh: line 177: `sed -i '63cNumber of Domain 域名数目：
1.Login to pihole website<br/>
2.Go to Groupmanagement > Adlists<br/>
3.click the red trash can button<br/>
4.open terminal<br/>
5. Run the following command :<br/>
```
sudo -i
sudo curl -s https://raw.githubusercontent.com/neodevpro/neodevhost/master/uninstall.sh | bash
pihole -g
```
6.Wait for 20 mins around  <br/> <br/>
7.Then it will Remove and Uninstall both NEODEV host and whitelist from your Pihole <br/>

## Sources of AD-hosts data 去广告host源
AD-hostss | Link  
--------- |:-------------:
Adguard | [link](https://adguardteam.github.io/AdGuardSDNSFilter/Filters/filter.txt)
Ad-wars | [link](https://github.com/jdlingyu/ad-wars)
Anti-AD | [link](https://github.com/privacy-protection-tools/anti-AD)
GoodbyeAds | [link](https://github.com/jerryn70/GoodbyeAds)
ilpl | [link](https://github.com/ilpl/ad-hosts)
Neohost | [link](https://github.com/neoFelhz/neohosts)
StevenBlack | [link](https://github.com/StevenBlack/hosts)
Yhosts | [link](https://github.com/VeleSila/yhosts)

## Sources of Allowlist 允许名单
Allowlist | Link  
--------- |:-------------:
AnudeepND | [link](https://github.com/anudeepND/whitelist)
Ultimate-Hosts-Blacklist | [link](https://github.com/Ultimate-Hosts-Blacklist/whitelist)
Yhosts | [link](https://github.com/VeleSila/yhosts)

## Dead Domain List 过期域名名单
Allowlist | Link  
--------- |:-------------:
Dead-block | [link](https://github.com/FusionPlmH/dead-block)
Dead-allow | [link](https://github.com/neodevpro/dead-allow)
