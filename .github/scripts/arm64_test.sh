apt-get update -qq
apt-get install -qq coreutils python3-pip $1 lib$1-dev
$1 -m pip install --upgrade pip
$1 -m pip install --upgrade setuptools tox
tox -e $2 -- -q --nomemory
