#!bin/bash

echo " "
echo "Clean..."
if [ -f host ]; then
    rm host
fi
if [ -f hostT ]; then
    rm hostT
fi
if [ -f block ]; then 
    rm block
fi
if [ -f adblocker ]; then 
    rm adblocker
fi
if [ -f adblockerblock ]; then 
    rm adblockerblock
fi
if [ -f adblockerallow ]; then 
    rm adblockerallow
fi
if [ -f host_dnsmasq.conf ]; then 
    rm hosts_dnsmasq.conf
fi
if [ -f block_dnsmasq.conf ]; then 
    rm block_dnsmasq.conf
fi

echo " "
echo "Merge allow..."
for url in `cat allowlist` ;do
    wget --no-check-certificate -t 1 -T 10 -O tmp $url
    cat tmp >> tmpallow
    rm tmp
done

sed -i '/]/d' tmpallow
sed -i '/[/d' tmpallow
sed -i '/#/d' tmpallow
sed -i '/\!/d' tmpallow
sed -i 's/127.0.0.1 //' tmpallow
sed -i 's/https:\/\///' tmpallow
sed -i 's/http:\/\///' tmpallow
sed -i 's/pp助手淘宝登录授权拉起//' tmpallow
sed -i 's/只要有这一条，//' tmpallow
sed -i 's/，腾讯视频网页下一集按钮灰色，也不能选集播放//' tmpallow
sed -i 's/会导致腾讯动漫安卓版的逗比商城白屏//' tmpallow
sed -i '/address/d' tmpallow
sed -i '/REG ^/d' tmpallow
sed -i '/RZD/d' tmpallow
sed -i 's/ALL ./ /g' tmpallow
sed -i 's/^[ \t]*//;s/[ \t]*$//' tmpallow
sed -i 's/ //g' tmpallow
sed -i '/^$/d' tmpallow
sort -u tmpallow > allow
rm tmpallow

echo " "
echo "Check Dead Allow..."
sort -n allow deadallow deadallow | uniq -u > tmp && mv tmp tmpallow
sort -u tmpallow > allow
rm tmpallow

echo " "
echo "Merge block..."
for url in `cat blocklist` ;do
    wget --no-check-certificate -t 1 -T 10 -O tmp $url
    cat tmp >> tmpblock
    rm tmp
done

sed -i '/]/d' tmpblock
sed -i '/[/d' tmpblock
sed -i '/{/d' tmpblock
sed -i '/}/d' tmpblock
sed -i '/#/d' tmpblock
sed -i '/ɢ/d' tmpblock
sed -i '/\!/d' tmpblock
sed -i '/255.255.255.255/d' tmpblock
sed -i '/192.30.255.112/d' tmpblock
sed -i '/151.101.56.133/d' tmpblock
sed -i '/ip6-/d' tmpblock
sed -i '/local/d' tmpblock
sed -i '/@@/d' tmpblock
sed -i '/*/d' tmpblock
sed -i 's/||//' tmpblock	
sed -i 's/\^//' tmpblock
sed -i 's/|//' tmpblock
sed -i 's/$important//' tmpblock
sed -i 's/$badfilter//' tmpblock
sed -i 's/127.0.0.1 //' tmpblock
sed -i 's/0.0.0.0.//' tmpblock
sed -i 's/0.0.0.0//' tmpblock
sed -i 's/:443//' tmpblock
sed -i 's/:://' tmpblock
#sed -i 's/:\/\///' tmpblock
sed -i 's/。//' tmpblock
sed -i 's/^\.//' tmpblock
sed -i 's/^[ \t]*//;s/[ \t]*$//' tmpblock
sed -i 's/ //g' tmpblock
sed -i '/^\s*$/d' tmpblock
sort -u tmpblock > block
rm tmpblock

echo " "
echo "Check Dead Block..."
sort -n block deadblock deadblock | uniq -u > tmp && mv tmp tmpblock
sort -u tmpblock > block
rm tmpblock

echo " "
echo "Merge Combine..."
sort -n block allow allow | uniq -u > tmp && mv tmp tmphost
sort -u tmphost > host
rm tmphost

echo " "
echo "Adding Compatibility..."

cp block adblockerblock
cp host adblocker
cp allow adblockerallow

cp host host_dnsmasq.conf
cp block block_dnsmasq.conf

cp host hostT

sed -i 's/^/||&/' adblocker
sed -i 's/$/&^/' adblocker 

sed -i 's/^/||&/' adblockerblock
sed -i 's/$/&^/' adblockerblock 

sed -i 's/^/@@||&/' adblockerallow
sed -i 's/$/&^/' adblockerallow

sed -i 's/^/0.0.0.0  &/' host
sed -i 's/^/0.0.0.0  &/' block

sed -i 's/^/address=\/&/' host_dnsmasq.conf 
sed -i 's/^/address=\/&/' block_dnsmasq.conf

sed -i 's/$/&\/0.0.0.0/' host_dnsmasq.conf  
sed -i 's/$/&\/0.0.0.0/' block_dnsmasq.conf 

echo " "
echo "Adding Title and SYNC data..."
sed -i '14cTotal ad / tracking block list 屏蔽追踪广告总数: '$(wc -l block)' ' README.md  
sed -i '16cTotal allowlist list 允许名单总数: '$(wc -l allow)' ' README.md 
sed -i '18cTotal combine list 结合总数： '$(wc -l host)' ' README.md
sed -i '20cUpdate 更新时间: '$(date "+%Y-%m-%d")'' README.md
cp title title.1
sed -i '9c# Last update: '$(date "+%Y-%m-%d")'' title.1
sed -i '11c# Number of blocked domains:  '$(wc -l block)' ' title.1   
cp title title.2
sed -i '9c# Last update: '$(date "+%Y-%m-%d")'' title.2
sed -i '11c# Number of blocked domains:  '$(wc -l host)' ' title.2   
cp title title.3
sed -i '9c# Last update: '$(date "+%Y-%m-%d")'' title.3
sed -i '11c# Number of blocked domains:  '$(wc -l adblockerblock)' ' title.3
cp title title.4
sed -i '9c# Last update: '$(date "+%Y-%m-%d")'' title.4
sed -i '11c# Number of blocked domains:  '$(wc -l adblocker)' ' title.4   
cp title title.5
sed -i '9c# Last update: '$(date "+%Y-%m-%d")'' title.5
sed -i '11c# Number of blocked domains:  '$(wc -l block_dnsmasq.conf)' ' title.5
cp title title.6
sed -i '9c# Last update: '$(date "+%Y-%m-%d")'' title.6
sed -i '11c# Number of blocked domains:  '$(wc -l host_dnsmasq.conf)' ' title.6       

cat block >>title.1
cat host >>title.2
cat adblockerblock >>title.3
cat adblocker >>title.4
cat block_dnsmasq.conf >>title.5
cat host_dnsmasq.conf >>title.6

rm -rf block
rm -rf host
rm -rf adblockerblock
rm -rf adblocker
rm -rf block_dnsmasq.conf
rm -rf host_dnsmasq.conf

mv title.1 block
mv title.2 host
mv title.3 adblockerblock
mv title.4 adblocker
mv title.5 block_dnsmasq.conf
mv title.6 host_dnsmasq.conf

echo " "
echo "Done!"
