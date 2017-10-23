source $stdenv/setup

configurePhase() {
    export ALLIANCE_TOP=$(pwd)
    export LD_LIBRARY_PATH=$out/lib:${LD_LIBRARY_PATH}
    cd ${ALLIANCE_TOP}/alliance/src
    ./autostuff
    ${ALLIANCE_TOP}/alliance/src/configure --prefix=$out --enable-alc-shared
}

buildPhase() {
    make -j 1 install
}

genericBuild
