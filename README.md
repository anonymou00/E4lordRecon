E4Recon: Advanced Red Team Reconnaissance Framework  
Created by: E4lord 👑💻❤️

---------------------------------------------------------------
Description:
---------------------------------------------------------------

E4Recon is a powerful, multi-functional reconnaissance tool 
designed for Red Team professionals and ethical hackers.

It automates and streamlines the information gathering process 
on a target domain, combining multiple open-source tools 
into a unified, user-friendly script.

Built entirely in Bash, E4Recon handles everything from 
environment setup to colorful, simultaneous tool execution.

---------------------------------------------------------------
Features:
---------------------------------------------------------------

✅ Multilingual support: Türkçe 🇹🇷, Azərbaycan 🇦🇿, English 🇬🇧  
✅ Mode selection: Automatic 🔁 or Manual 🔧  
✅ Attack profiles: Aggressive 🔥 or Silent 🕵️‍♂️  
✅ Automatic environment setup (Python venv + dependencies)  
✅ Checks and installs required tools automatically  
✅ In automatic mode, tools run in separate colored terminals  
✅ In manual mode, tools run in a single terminal (as requested)  
✅ Smart domain formatting (adds https:// when needed)  
✅ Colorful output with figlet + lolcat for style  
✅ Minimal, elegant, hacker-friendly interface  

---------------------------------------------------------------
Included Tools:
---------------------------------------------------------------

• nmap  
• subfinder  
• assetfinder  
• whatweb  
• whois  
• dirsearch  
• theHarvester  
• dnsenum  
• nikto  
• wapiti  
• wafw00f  

---------------------------------------------------------------
Attack Modes:
---------------------------------------------------------------

🔥 Aggressive Mode:
  - Fast, detailed, full-port scans and deeper analysis
  - Example: nmap -sV -O -p- -sS -T4

🕵️ Silent Mode:
  - Slow, stealthy scans with minimal footprint
  - Example: nmap -T1 --host-timeout 30m

---------------------------------------------------------------
Usage:
---------------------------------------------------------------

 chmod +x e4recon.sh 
 dos2unix e4recon.sh
 ./e4recon.sh  

The script automatically creates and activates a Python virtual environment for tools like theHarvester and wapiti.

---------------------------------------------------------------
Credits:
---------------------------------------------------------------

🧠 Developer: E4lord  
💡 Concept, Vision & Styling: E4lord 👑
E4Recon: Gelişmiş Red Team Bilgi Toplama (Reconnaissance) Aracı
Hazırlayan: E4lord 💻❤️

---------------------------------------------------------------
Açıklama:
---------------------------------------------------------------

E4Recon, Red Team uzmanları için geliştirilmiş, kapsamlı ve çok fonksiyonlu bir bilgi toplama aracıdır. 
Amacı hedef bir alan adı (domain) hakkında hızlı, detaylı ve otomatik bilgi toplama sürecini yönetmektir.

Aracımız Bash diliyle yazılmıştır ve aşağıdaki güçlü özellikleri içerir:

---------------------------------------------------------------
Özellikler:
---------------------------------------------------------------

✅ 3 Dilli Destek: Türkçe 🇹🇷, Azərbaycan 🇦🇿, English 🇬🇧  
✅ Otomatik veya Manuel Mod Seçimi  
✅ Aggressive veya Silent (sessiz) saldırı profili  
✅ Gereken tüm araçlar kontrol edilir ve eksikler otomatik kurulur  
✅ Python araçları için Virtual Environment (venv) sistemi kurulur  
✅ Otomatik modda her araç farklı terminalde, eş zamanlı ve renkli çalışır  
✅ Manuel modda tek terminalde çalışır  
✅ Araçların ihtiyaçlarına göre domain’e otomatik “https://” eklenir  
✅ Çok renkli ve estetik yazı çıkışları (figlet + lolcat desteği)  
✅ Kullanımı kolay, terminal dostu, sade ve hızlı

---------------------------------------------------------------
Kullanılan Araçlar:
---------------------------------------------------------------

• nmap  
• subfinder  
• assetfinder  
• whatweb  
• whois  
• dirsearch  
• theHarvester  
• dnsenum  
• nikto  
• wapiti  
• wafw00f  

---------------------------------------------------------------
Saldırı Profilleri:
---------------------------------------------------------------

🔥 Aggressive Mode:
  - Daha detaylı, hızlı ve derinlemesine taramalar yapar
  - Örnek: nmap -sV -O -p- -sS -T4

🕵️ Silent Mode:
  - Daha yavaş ve gizliliğe odaklı çalışır
  - Örnek: nmap -T1 --host-timeout 30m

---------------------------------------------------------------
Kullanım:
---------------------------------------------------------------

 chmod +x e4recon.sh
 dos2unix e4recon.sh
 ./e4recon.sh

Python araçları için venv otomatik oluşturulur ve aktif edilir.

---------------------------------------------------------------
Geliştiriciler:
---------------------------------------------------------------

🧠 Kodlama: E4lord  
💡 Fikir, Gelişim ve Estetik: E4lord 👑  
E4Recon: Təkmilləşdirilmiş Red Team Məlumat Toplama Aləti  
Hazırlayan: E4lord 👑💻❤️

---------------------------------------------------------------
Təsvir:
---------------------------------------------------------------

E4Recon Red Team (hücum komandası) və etik hakerlər üçün hazırlanmış 
güclü, çoxfunksiyalı bir məlumat toplama vasitəsidir.

Bu skript açıq mənbəli bir neçə tanınmış aləti birləşdirərək 
hədəf domen haqqında avtomatik və dərin analiz aparmağa imkan verir.

Alət tamamilə Bash dilində yazılıb və istifadəçiyə rahat, 
rəngli, peşəkar bir interfeys təqdim edir.

---------------------------------------------------------------
Xüsusiyyətlər:
---------------------------------------------------------------

✅ 3 dilli dəstək: Türkçe 🇹🇷, Azərbaycan 🇦🇿, English 🇬🇧  
✅ Mod seçimi: Avtomatik 🔁 və ya Manual 🔧  
✅ Hücum rejimi: Aqressiv 🔥 və ya Səssiz 🕵️‍♂️  
✅ Python virtual mühit (venv) avtomatik yaradılır  
✅ Tələb olunan bütün alətlər yoxlanılır və qurulur  
✅ Avtomatik modda alətlər fərqli terminallarda işləyir  
✅ Manual modda hər şey tək terminalda işləyir  
✅ “https://” lazım olduqda domenə avtomatik əlavə olunur  
✅ Rəngli, estetik görünüş (figlet + lolcat ilə)  
✅ Sadə, hacker-dostu terminal interfeysi

---------------------------------------------------------------
İstifadə edilən alətlər:
---------------------------------------------------------------

• nmap  
• subfinder  
• assetfinder  
• whatweb  
• whois  
• dirsearch  
• theHarvester  
• dnsenum  
• nikto  
• wapiti  
• wafw00f  

---------------------------------------------------------------
Hücum rejimləri:
---------------------------------------------------------------

🔥 Aqressiv rejim:
  - Sürətli və geniş port taramaları, daha əhatəli analiz
  - Nümunə: nmap -sV -O -p- -sS -T4

🕵️ Səssiz rejim:
  - Yavaş, gizli fəaliyyətlə iz qoymadan məlumat toplama
  - Nümunə: nmap -T1 --host-timeout 30m

---------------------------------------------------------------
İstifadə qaydası:
---------------------------------------------------------------

 chmod +x e4recon.sh
 dos2unix e4recon.sh
 ./e4recon.sh  

Python alətləri üçün virtual mühit avtomatik yaradılır və aktivləşdirilir.

---------------------------------------------------------------
Müəlliflər:
---------------------------------------------------------------

🧠 Kodlaşdırma və inkişaf: E4lord  
💡 İdeya, dizayn və estetik: E4lord 👑  

