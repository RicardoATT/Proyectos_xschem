#!/bin/sh
#
# (c) 2021-2022 Harald Pretl
# Institute for Integrated Circuits
# Johannes Kepler University Linz
#
export PDK_ROOT=/home/ricardo/pdk
export PDK=sky130B
export STD_CELL_LIBRARY=sky130_fd_sc_hd
cp -f $PDK_ROOT/$PDK/libs.tech/xschem/xschemrc $HOME/.xschem
cp -f $PDK_ROOT/$PDK/libs.tech/magic/$PDK.magicrc $HOME/.magicrc
