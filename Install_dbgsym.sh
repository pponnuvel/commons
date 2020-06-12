# Install kernel debug packages (Ubuntu)

rel=$(lsb_release -c | awk  '{print $2}')
sudo tee /etc/apt/sources.list.d/ddebs.list << EOF
deb http://ddebs.ubuntu.com/ ${rel}          main restricted universe multiverse
deb http://ddebs.ubuntu.com/ ${rel}-security main restricted universe multiverse
deb http://ddebs.ubuntu.com/ ${rel}-updates  main restricted universe multiverse
deb http://ddebs.ubuntu.com/ ${rel}-proposed main restricted universe multiverse
EOF
sudo apt-get update
sudo apt-get install linux-image-$(uname -r)-dbgsym -y
