#!/bin/bash
# This script is sufficient for most common use-cases i.e., vanilla.
# Download the release from: https://gcc.gnu.org/releases.html
# Sub XXX with the version e.g. s/XXX/7.1.0/g
# For details: https://gcc.gnu.org/install/

tar xzf gcc-XXX.tar.gz
cd gcc-XXX
./contrib/download_prerequisites
cd ..
mkdir objdir
cd objdir
$PWD/../gcc-XXX/configure --prefix=/usr/local/install && make && make install
