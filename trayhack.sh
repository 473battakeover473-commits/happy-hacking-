#!/bin/bash

clear
mkdir -p Tools
clear 

echo -e '\033[31;40;1m 
██╗  ██╗ █████╗ ██████╗ ██████╗ ██╗   ██╗    ██╗  ██╗ █████╗  ██████╗██╗  ██╗██╗███╗   ██╗ ██████╗ 
██║  ██║██╔══██╗██╔══██╗██╔══██╗╚██╗ ██╔╝    ██║  ██║██╔══██╗██╔════╝██║ ██╔╝██║████╗  ██║██╔════╝ 
███████║███████║██████╔╝██████╔╝ ╚████╔╝     ███████║███████║██║     █████╔╝ ██║██╔██╗ ██║██║  ███╗
██╔══██║██╔══██║██╔═══╝ ██╔═══╝   ╚██╔╝      ██╔══██║██╔══██║██║     ██╔═██╗ ██║██║╚██╗██║██║   ██║
██║  ██║██║  ██║██║     ██║        ██║       ██║  ██║██║  ██║╚██████╗██║  ██╗██║██║ ╚████║╚██████╔╝
╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝        ╚═╝       ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝ 
  Coded by Tray 
  github: https://github.com/iHavebraincells discord user is got2muchbandz_
\033[33;4mVersion:\033[0m 4            \033[33;4mCTRL+C:\033[0m exit          \033[33;4mAuthor:\033[0m Tray

\e[37m[1]\e[36m Requests & Update        \e[37m[2]\e[36m Phishing Tool				
\e[37m[3]\e[36m WebCam Hack                   \e[37m[4]\e[36m Subscan			
\e[37m[5]\e[36m Gmail Bomber		  \e[37m[6]\e[36m DDOS Attack			
\e[37m[7]\e[36m How to use?	          \e[37m[8]\e[36m uninstall downloaded tools	
\e[37m[9]\e[36m Ip Info	                  \e[37m[10]\e[36m dorks-eye
\e[37m[11]\e[36m HackerPro                    \e[37m[12]\e[36m RED_HAWK
\e[37m[13]\e[36m VirusCrafter                 \e[37m[14]\e[36m Info-Site
\e[37m[15]\e[36m BadMod	                  \e[37m[16]\e[36m Facebash
\e[37m[17]\e[36m DARKARMY                     \e[37m[18]\e[36m AUTO-IP-CHANGER

'

read -p "Enter option number: " islem

case $islem in
    1|01)
        clear
        echo -e "\033[47;31;5m Installing updates and dependencies... \033[0m"
        sleep 5
        pkg install git -y
        pkg install python python3 -y
        pkg install pip pip3 -y
        pkg install curl -y
        apt update
        apt upgrade -y
        clear
        echo -e "\033[47;3;35m Update complete... \033[0m"
        sleep 3
        bash trayhack.sh
        ;;
    2|02)
        clear
        echo -e "\033[47;3;35m Installing, this may take some time... \033[0m"
        sleep 3
        cd Tools
        git clone https://github.com/htr-tech/zphisher
        cd zphisher
        bash zphisher.sh
        ;;
    3|03)
        clear
        echo -e "\033[47;3;35m Installing, this may take some time... \033[0m"
        sleep 3
        cd Tools
        git clone https://github.com/techchipnet/CamPhish
        cd CamPhish
        bash camphish.sh
        ;;
    4|04)
        clear
        echo -e "\033[47;3;35m Installing, this may take some time... \033[0m"
        sleep 3
        git clone https://github.com/zidansec/subscan
        cd subscan
        read -p "Enter a domain please (example.com): " sc
        ./subscan $sc
        ;;
    5|05)
        clear
        echo -e "\033[47;3;35m Installing, this may take some time... \033[0m"
        sleep 3
        cd Tools
        git clone https://github.com/juzeon/fast-mail-bomber.git
        cd fast-mail-bomber/
        mv config.example.php config.php
        php index.php update-providers
        rm -rf data/nodes.json data/dead_providers.json
        echo -e "\033[47;3;35m This install will take some time... \033[0m"
        echo -e "\033[47;3;35m Press Ctrl+C to stop \033[0m"
        sleep 4
        php index.php update-nodes
        php index.php refine-nodes
        echo "-------------------------"
        read -p "Enter the email address to bomb: " mail
        echo "-------------------------"
        php index.php start-bombing $mail
        ;;
    6|06)
        clear
        echo -e "\033[47;3;35m Installation may take some time... \033[0m"
        sleep 3
        cd Tools
        git clone https://github.com/palahsu/DDoS-Ripper.git
        cd DDoS-Ripper
        python3 DRipper.py
        echo ""
        echo -e "\033[47;3;35m Hide your IP before using this tool \033[0m"
        ;;
    7|07)
        clear
        echo "Youtube Video: https://www.youtube.com/watch?v=zgdq6ErscqY"
        python3 -m webbrowser https://www.youtube.com/watch?v=zgdq6ErscqY
        sleep 10
        echo "Wait 10 seconds"
        bash trayhack.sh
        ;;
    8|08)
        clear
        echo -e "\033[47;3;35m Removing downloaded programs... \033[0m"
        sleep 3
        rm -rf Tools
        bash trayhack.sh
        ;;
    9|09)
        clear
        echo -e "\033[47;3;35m Installation may take some time... \033[0m"
        sleep 3
        cd Tools
        apt update
        apt install git curl
        git clone https://github.com/htr-tech/track-ip.git
        cd track-ip
        bash trackip
        ;;
    10|010)
        clear
        echo -e "\033[47;3;35m Installation may take some time... \033[0m"
        sleep 3
        cd Tools
        git clone https://github.com/BullsEye0/dorks-eye.git
        cd dorks-eye
        pip install -r requirements.txt
        python3 dorks-eye.py
        ;;
    11|011)
        clear
        echo -e "\033[47;3;35m Installation may take some time... \033[0m"
        sleep 3
        cd Tools
        apt update && apt upgrade && apt install git && apt install python2
        git clone https://github.com/jaykali/hackerpro.git
        cd hackerpro
        sudo bash install.sh
        python2 hackerpro.py
        ;;
    12|012)
        clear
        echo -e "\033[47;3;35m Installation may take some time... \033[0m"
        sleep 3
        cd Tools
        git clone https://github.com/Tuhinshubhra/RED_HAWK
        cd RED_HAWK
        php rhawk.php
        ;;
    13|013)
        clear
        echo -e "\033[47;3;35m Installation may take some time... \033[0m"
        sleep 3
        cd Tools
        git clone https://github.com/Devil-Tigers/TigerVirus
        apt update
        apt upgrade -y
        pkg install git -y
        cd TigerVirus
        bash app.sh
        ;;
    14|014)
        clear
        echo -e "\033[47;3;35m Installation may take some time... \033[0m"
        sleep 3
        cd Tools
        pkg install curl -y
        upgrade -y
        pkg install git -y
        git clone https://github.com/king-hacking/info-site.git
        cd info-site
        bash info.sh
        ;;
    15|015)
        clear
        echo -e "\033[47;3;35m Installation may take some time... \033[0m"
        sleep 3
        cd Tools
        sudo apt-get update
        sudo apt-get install php
        sudo apt-get install php-curl
        git clone https://github.com/MrSqar-Ye/BadMod.git
        cd BadMod
        chmod u+x INSTALL
        chmod u+x BadMod.php
        sudo php BadMod.php
        ;;
    16|016)
        clear
        echo -e "\033[47;3;35m Installation may take some time... \033[0m"
        sleep 3
        cd Tools
        git clone https://github.com/fu8uk1/facebash
        cd facebash
        bash install.sh
        chmod +x facebash.sh
        tor
        sudo ./facebash.sh
        ;;
    17|017)
        clear
        echo -e "\033[47;3;35m Installation may take some time... \033[0m"
        sleep 3
        cd Tools
        pkg install git
        pkg install python2
        apt install git
        apt install python2
        git clone https://github.com/D4RK-4RMY/DARKARMY
        cd DARKARMY
        chmod +x darkarmy.py
        python2 darkarmy.py
        ;;
    18|018)
        clear
        echo -e "\033[47;3;35m Installation may take some time... \033[0m"
        echo -e "\033[47;3;35m This tool requires root access \033[0m"
        sleep 3
        cd Tools
        sudo apt-get install tor
        pip3 install requests
        git clone https://github.com/FDX100/Auto_Tor_IP_changer.git
        cd Auto_Tor_IP_changer
        echo -e "\033[47;3;35m Go to your browser and set the proxy (sock proxy) to 127.0.0.1:9050 \033[0m"
        sleep 8
        python3 install.py
        aut
        ;;
    *)
        clear
        echo -e '\033[36;40;1m Invalid option entered. Please try again.\033[0m'
        sleep 1
        clear
        bash trayhack.sh
        ;;
esac
