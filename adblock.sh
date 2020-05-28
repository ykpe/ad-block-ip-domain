curl -s -L https://easylist-downloads.adblockplus.org/easylistchina+easylist.txt https://easylist-downloads.adblockplus.org/malwaredomains_full.txt https://raw.githubusercontent.com/Goooler/1024_hosts/master/hosts https://gitee.com/privacy-protection-tools/anti-ad/raw/master/domains.txt https://easylist-downloads.adblockplus.org/fanboy-social.txt > adblock.unsorted
sort -u adblock.unsorted | grep ^\|\|.*\^$ | grep -v \/ > adblock.sorted
sed 's/[\|^]//g' < adblock.sorted > easylistChina-host.txt
rm adblock.unsorted adblock.sorted
