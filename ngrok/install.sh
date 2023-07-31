cd ~
curl https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz -o ngrok.tgz
tar xf ngrok.tgz -C /usr/local/bin
chmod +x /usr/local/bin/ngrok
ngrok config add-authtoken 7rVevA5bTWyWhrnztScoh_4JAxKkZMEcuaqpdbyqGen
