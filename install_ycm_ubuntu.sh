sudo apt-get update
sudo apt-get install build-essential cmake python-dev -y

cd ./bundle/YouCompleteMe/
git submodule update --init --recursive
./install.py
