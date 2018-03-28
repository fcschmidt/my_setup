#!/bin/bash
# Install and Configure ArcGis Server
# Install: https://anaconda.org/esri/arcgis-server-10.6-py3
#
# Environments: https://conda.io/docs/user-guide/tasks/manage-environments.html
#
# For more information about managing conda environments,
# refer to the conda documentation: http://conda.pydata.org/docs/using/envs.html
#
# Install ArGis Server
# conda create -c esri -n <condaEnv> <python=3.5> arcgis-server-10.6-py3
conda create -c esri -n ArcgisEnv arcgis-server-10.6-py3

# Set the ARCGISHOME variable to the installation directory
# of ArcGIS Server 10.6:
export ARCGISHOME=/path/to/arcgis/server

# Activate the environment:
# source activate <condaEnv>
source activate ArcgisEnv

# Deactivate the environment:
# source deactivate <condaEnv>
source deactivate ArcgisEnv
