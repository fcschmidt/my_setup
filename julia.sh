#!/bin/bash
#  Install Julia Language
#
#
sudo add-apt-repository ppa:staticfloat/juliareleases
sudo apt-get update
sudo apt-cache show julia
sudo apt-get install julia julia-doc -y
julia -E 'Pkg.update()'
julia
