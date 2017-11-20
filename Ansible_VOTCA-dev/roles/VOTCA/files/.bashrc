# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# GROMACS source file for env
source /apps/gromacs-2016.4/build/scripts/GMXRC.bash

# VORCA source file for env
source /usr/local/bin/bin/VOTCARC.bash

# VOTCA Executables
export PATH=$PATH:/usr/local/bin/bin

# GROMACS library path
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/bin/lib64:/apps/gromacs-2016.4/build/lib
