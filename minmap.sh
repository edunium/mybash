#/bin/bash
# by krqch
# AUTOMATIZA NMAP EN RED LOCAL

target=192.168.1.*

prueba()
	nmap -sT $target >> test.txt
#prueba

while IFS= read -r line
do
	echo "$line"
	$(nmap $line)
done < ips.txt
