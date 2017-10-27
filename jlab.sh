# setup ROOT
cd /opt/root/
source bin/thisroot.sh
# copy ROOT kernel into Jupyter
mkdir -p /root/.local/share/jupyter/kernels
cp -r $ROOTSYS/etc/notebook/kernels/root ~/.local/share/jupyter/kernels

# install root-pandas and root-numpy
pip2 install root-pandas
pip3 install root-pandas

mkdir /root/.jupyter/
wget https://raw.githubusercontent.com/ivukotic/ML_platform_tests/master/jupyter_notebook_config.py
mv jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config.py
export SHELL=/bin/bash

jupyter lab --allow-root
