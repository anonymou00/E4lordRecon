#!/bin/bash
# Gerekli paketler yüklü değilse yükle
if ! command -v figlet &> /dev/null || ! command -v lolcat &> /dev/null; then
  echo -e "${YELLOW}[i] figlet ve lolcat yüklü değil, kuruluyor...${NC}"
  sudo apt update && sudo apt install -y figlet lolcat
fi
# RENKLER
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m'

# BAŞLIK
clear
figlet -f slant "E4Recon" | lolcat
echo -e "${CYAN}        by E4lord ${NC}"
sleep 1

# VENV KONTROL
echo -e "\n${YELLOW}[i] Python virtual environment hazırlanıyor...${NC}"
if ! dpkg -s python3-venv &> /dev/null; then
  echo -e "${RED}[!] python3-venv yüklü değil. Kuruluyor...${NC}"
  sudo apt install -y python3-venv
fi
if [ ! -d "myenv" ]; then
  echo -e "${GREEN}[+] Virtual environment (myenv) oluşturuluyor...${NC}"
  python3 -m venv myenv
fi
source myenv/bin/activate
pip install --upgrade pip > /dev/null
pip install theHarvester wapiti > /dev/null

# ARAÇ KONTROLÜ
echo -e "\n${CYAN}[i] Gerekli araçlar kontrol ediliyor...${NC}"
required_tools=(nmap whois whatweb subfinder assetfinder dnsenum nikto wafw00f)
for tool in "${required_tools[@]}"; do
  if ! command -v $tool &> /dev/null; then
    echo -e "${RED}[!] $tool eksik. Kuruluyor...${NC}"
    sudo apt install -y $tool
  else
    echo -e "${GREEN}[✓] $tool yüklü.${NC}"
  fi
done

# dirsearch
if [ ! -d "dirsearch" ]; then
  echo -e "${YELLOW}[i] dirsearch yok. Klonlanıyor...${NC}"
  git clone https://github.com/maurosoria/dirsearch.git
else
  echo -e "${GREEN}[✓] dirsearch mevcut.${NC}"
fi

# DİL SEÇİMİ
echo -e "\n${CYAN}1. Azərbaycan dili\n2. Türkçe\n3. English${NC}"
read -p "Dil seç / Select language: " lang_choice

case $lang_choice in
  1) select_target="Hədəf domain daxil edin"
     mode_select="Modu seçin: 1-Automatik, 2-Manual"
     attack_select="Hücum tipi: 1-Aqressiv, 2-Səssiz"
     ;;
  2) select_target="Hedef domain giriniz"
     mode_select="Mod seç: 1-Otomatik, 2-Manuel"
     attack_select="Saldırı tipi: 1-Agresif, 2-Sessiz"
     ;;
  *) select_target="Enter target domain"
     mode_select="Select mode: 1-Automatic, 2-Manual"
     attack_select="Attack type: 1-Aggressive, 2-Silent"
     ;;
esac

read -p "$mode_select: " mode
read -p "$attack_select: " attack_mode
read -p "$select_target: " domain

# SALDIRI KOMUTLARI
if [ "$attack_mode" == "1" ]; then
  declare -A cmds=(
    ["nmap"]="nmap -sV -O -p- -sS -T4"
    ["subfinder"]="subfinder -d"
    ["assetfinder"]="assetfinder"
    ["whatweb"]="whatweb"
    ["whois"]="whois"
    ["dirsearch"]="python3 dirsearch/dirsearch.py -u"
    ["theHarvester"]="theHarvester -b all -l 500 -d"
    ["dnsenum"]="dnsenum"
    ["nikto"]="nikto -Tuning x -timeout 30 -h"
    ["wapiti"]="wapiti -m full"
    ["wafw00f"]="wafw00f --verbose"
  )
else
  declare -A cmds=(
    ["nmap"]="nmap -T1 --host-timeout 30m"
    ["subfinder"]="subfinder -d"
    ["assetfinder"]="assetfinder"
    ["whatweb"]="whatweb"
    ["whois"]="whois"
    ["dirsearch"]="python3 dirsearch/dirsearch.py -u"
    ["theHarvester"]="theHarvester -b bing -l 100 -d"
    ["dnsenum"]="dnsenum --noreverse"
    ["nikto"]="nikto -Tuning 2 -timeout 10 -h"
    ["wapiti"]="wapiti -m quick"
    ["wafw00f"]="wafw00f"
  )
fi

# HTTPS gereken araçlar
https_tools=("dirsearch" "nikto" "whatweb" "wapiti" "wafw00f")
prepare_domain() {
  tool=$1
  for t in "${https_tools[@]}"; do
    if [[ "$tool" == "$t" ]]; then
      [[ "$domain" != http* ]] && echo "https://$domain" && return
    fi
  done
  echo "$domain"
}

# MODE GÖRE ÇALIŞTIR
if [ "$mode" == "1" ]; then
  echo -e "${YELLOW}[i] Otomatik mod: her araç ayrı terminalde çalışacak.${NC}"
  for tool in "${!cmds[@]}"; do
    tdomain=$(prepare_domain $tool)
    gnome-terminal --title="$tool" -- bash -c "echo -e '${BLUE}[${tool^^}] başlatılıyor...${NC}'; ${cmds[$tool]} $tdomain; exec bash"
  done
else
  echo -e "${GREEN}[i] Manuel mod aktif. Araç listesi:${NC}"
  for tool in "${!cmds[@]}"; do echo -e "- $tool"; done
  read -p "Çalıştırmak istediğiniz aracı yazın: " selected_tool
  if [[ -z "${cmds[$selected_tool]}" ]]; then
    echo -e "${RED}[!] Geçersiz araç adı.${NC}"
    exit 1
  fi
  tdomain=$(prepare_domain $selected_tool)
  echo -e "${BLUE}[*] ${selected_tool} başlatılıyor...${NC}"
  ${cmds[$selected_tool]} $tdomain

