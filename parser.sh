strings output.txt >> output1.txt
echo "[+] parsing the output.txt file"
grep -i start output1.txt | uniq >> transmitted.txt
sed -i -e 's/\$\$START\$\$//g' transmitted.txt
echo "[+] cleaning"
rm output1.txt
rm output.txt
echo "[+] tranmistted.txt created"
