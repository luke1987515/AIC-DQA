BF_SOP.TXT
===

3.1. Install htop 
# yum -y install epel-release 
# yum -y install htop 

3.2. Install screen 
# yum -y install screen 

3.3. Install minicom 
# yum -y install minicom 

4. Update Kernel 
# mkdir /root/4.11.3 
# cd /root/4.11.3 
# wget "https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.11.3.tar.xz" 
# tar -xf linux-4.11.3.tar.xz 
# cd linux-4.11.3 
# cp /boot/config-3.10.0-693.5.2.el7.x86_64 .config 
# yum -y install ncurses ncurses-devel openssl-devel grub2 gcc
# make menuconfig 

4.1. Check NVME parameters setting on .config file 
# grep "NVME_" .config 

CONFIG_NVME_CORE=m 
# CONFIG_BLK_DEV_NVME_SCSI is not set <-- Ignore this line. 
CONFIG_NVME_FABRICS=m 
CONFIG_NVME_RDMA=m 
CONFIG_NVME_TARGET=m 
CONFIG_NVME_TARGET_LOOP=m 
CONFIG_NVME_TARGET_RDMA=m 


4.2. Compile the kernel and modules 
for CentOS7.6  # yum -y install libelf-dev libelf-devel elfutils-libelf-devel
# make -j56 && make -j56 modules 
# make -j56 modules_install 
# make -j56 install 
# grep ^menuentry /boot/grub2/grub.cfg | cut -d "'" -f2 
# grub2-set-default 'CentOS Linux (4.11.3) 7 (Core)' 
# reboot 

5. Install Driver 
# cd /root 
# yum -y install perl pciutils python gcc-gfortran libxml2-python python python-devel tcsh libnl.i686 libnl expat glib2 tcl libstdc++ bc tk gtk2 atk cairo numactl pkgconfig ethtool lsof 
# yum -y install unbound 
# wget http://content.mellanox.com/ofed/MLNX_OFED-4.6-1.0.1.1/MLNX_OFED_LINUX-4.6-1.0.1.1-rhel7.4-x86_64.iso 
# mount -o ro,loop MLNX_OFED_LINUX-4.6-1.0.1.1-rhel7.4-x86_64.iso /mnt 
# cd /mnt 
# ./mlnxofedinstall --add-kernel-support --with-nvmf --force 

6. Install MFT 
# cd /root 
# wget http://www.mellanox.com/downloads/MFT/mft-4.12.0-105-x86_64-rpm.tgz 
# tar zxvf mft-4.12.0-105-x86_64-rpm.tgz 
# cd mft-4.12.0-105-x86_64-rpm/ 
# ./install.sh --oem 

7. Install NVMe & FIO 
7.1. Install NVMe Packages 
# yum -y install nvmetcli.noarch 
7.2. Install NVME-CLI 
# yum -y install nvme-cli.x86_64 
7.3. Install FIO 
# git clone http://github.com/axboe/fio.git 
# cd fio 
# yum -y install libaio-devel 
# ./configure 
# make -j56 
# make install 
# yum -y install ipmitool

