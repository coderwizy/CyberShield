#!/data/data/com.termux/files/usr/bin/bash

# Colors
red='\e[1;31m'
green='\e[1;32m'
yellow='\e[1;33m'
cyan='\e[1;36m'
blue='\e[1;34m'
nc='\e[0m'

# Banner
clear
figlet -f slant "CyberShield" | lolcat
echo -e "${blue}🛡️ A tool made to tackle cyber criminals – *JAI HIND 🇮🇳*${nc}"
echo -e "${green}🙎‍♂️ Created by: ${red}S.${green} | 🧠 Version: ${cyan}1.0 PRO${nc}"
echo -e "${yellow}📅 Date: $(date +'%d-%m-%Y %H:%M:%S')${nc}"
echo -e "${red}═══════════════════════════════════════════════${nc}"

# Menu
while true; do
  echo -e "\n${yellow}🔘 Main Menu:${nc}"
  echo -e "${cyan}[1] IG Defender"
  echo -e "[2] IP Tracker"
  echo -e "[3] DM Harassment Analyzer"
  echo -e "[4] Insta Stalker Detector"
  echo -e "[5] Evidence Collector"
  echo -e "[6] Admin Log Viewer"
  echo -e "[7] Username to Email Leak Checker"
  echo -e "[8] Phone Number OSINT"
  echo -e "[9] Fake Job Offer Phisher"
  echo -e "[10] Profile Cloner Detector"
  echo -e "[11] Link Click Alert"
  echo -e "[12] FIR Auto-Filler PDF"
  echo -e "[13] Webcam Phish Sim"
  echo -e "[14] Voice Threat Recorder"
  echo -e "[15] Logs Merger + ZIP"
  echo -e "[16] ShieldGuard: Victim Panel"
  echo -e "[0] Exit${nc}"
  echo -ne "${green}Enter your choice: ${nc}"
  read choice

  case $choice in
    1)
      clear
      figlet "IG Defender" | lolcat
      echo -e "\n${yellow}🔒 Helping users report abuse on Instagram${nc}"
      read -p "Enter IG username to report: " username
      echo "https://www.instagram.com/$username/report/" > ~/cybershield/logs/igdefender.log
      termux-open-url "https://www.instagram.com/$username/report/"
      echo -e "\n${green}[✔] Report page opened & logged.${nc}"
      ;;
    2)
      clear
      figlet "IP Tracker" | lolcat
      read -p "Enter IP: " ip
      curl -s ipinfo.io/$ip > ~/cybershield/logs/iptracker.log
      cat ~/cybershield/logs/iptracker.log
      ;;
    3)
      clear
      figlet "DM Analyzer" | lolcat
      echo "Enter abusive text:"
      read text
      echo "$text" | grep -Ei 'abuse|rape|kill|nude|blackmail|stalk' > tempcheck.txt
      if [ -s tempcheck.txt ]; then echo -e "${red}⚠️ THREAT DETECTED${nc}"; else echo -e "${green}✅ Clean${nc}"; fi
      rm tempcheck.txt
      ;;
    4)
      clear
      figlet "Stalker Detect" | lolcat
      echo -e "${yellow}👀 Basic stalk scan. For deep scan, contact admin.${nc}"
      ;;
    5)
      clear
      figlet "Collector" | lolcat
      read -p "Paste any evidence (URL/screenshot path): " evi
      echo "$evi" >> ~/cybershield/logs/evidence.log
      echo -e "${green}📌 Saved.${nc}"
      ;;
    6)
      clear
      figlet "Admin Logs" | lolcat
      ls ~/cybershield/logs
      read -p "Enter file to view: " file
      cat ~/cybershield/logs/$file
      ;;
    7) echo -e "${cyan}🧪 Username to Email Leak Checker coming soon...${nc}" ;;
    8) echo -e "${cyan}🧪 Phone Number OSINT loading...${nc}" ;;
    9) echo -e "${cyan}🧪 Fake Job Phisher setup...${nc}" ;;
    10) echo -e "${cyan}🧪 Profile Cloner Detector building...${nc}" ;;
    11) echo -e "${cyan}🧪 Click Alert coming soon...${nc}" ;;
    12) echo -e "${cyan}🧪 FIR Auto-Filler in progress...${nc}" ;;
    13) echo -e "${cyan}🧪 Webcam Phish Sim pending...${nc}" ;;
    14) echo -e "${cyan}🧪 Voice Threat Recorder incoming...${nc}" ;;
    15) echo -e "${cyan}🧪 Logs Merger + ZIP tool pending...${nc}" ;;
    16) echo -e "${cyan}🧪 ShieldGuard Victim Panel preparing...${nc}" ;;
    0)
      echo -e "${cyan}👋 Exiting... Stay safe.${nc}"
      exit
      ;;
    *) echo -e "${red}❌ Invalid option. Please try again.${nc}" ;;
  esac
done
