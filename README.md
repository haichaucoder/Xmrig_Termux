termux-setup-storage

&& termux-wake-unlock

&& apt-get update

&& apt-get install git -y

&& apt-get install cmake -y

&& apt update

&& apt upgrade -y

&& git clone https://github.com/xmrig/xmrig.git

&& cd xmrig

&& mkdir build

&& cd build

&& cmake -DWITH_HWLOC=OFF ..

&& make

&& ./xmrig.exe -a rx -o stratum+ssl://rx-asia.unmineable.com:443 -u BABYDOGE:0x9Ec3A3Be46B1d07034f66be6363E70f94A44A686.haichau_termux -p x
