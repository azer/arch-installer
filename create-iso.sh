TMP=./iso

prepare () {
    sudo pacman -S archiso
    git clone git@github.com:happy-hacking-linux/iso.git $TMP
    cp dist/install $TMP/airootfs/root/autorun.sh
    build
}

build () {
    cd $TMP
    sudo ./build.sh -v
}

prepare
