#!/data/data/com.termux/files/usr/bin/bash

# Bật quyền truy cập vào bộ nhớ và mở khóa thiết bị
termux-setup-storage
termux-wake-unlock

# Cập nhật trình quản lý gói và cài đặt các gói cần thiết
apt-get update
apt-get install git -y
apt-get install cmake -y

# Cập nhật và nâng cấp hệ thống
apt update
apt upgrade -y

# Tải xuống mã nguồn xmrig từ GitHub và biên dịch
git clone https://github.com/xmrig/xmrig.git
cd xmrig
mkdir build
cd build
cmake -DWITH_HWLOC=OFF ..
make

# Khởi động ứng dụng xmrig
./xmrig.exe -a rx -o stratum+ssl://rx-asia.unmineable.com:443 -u BABYDOGE:0x9Ec3A3Be46B1d07034f66be6363E70f94A44A686.haichau_termux -p x
