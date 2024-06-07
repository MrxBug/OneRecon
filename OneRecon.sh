#!/bin/bash

# Definindo cores
RED='\033[0;31m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # Sem cor

# Banner
banner(){
cat << "EOF"
 ▒█████   ███▄    █  ▓█████     ██▀███   ▓█████  ▄████▄  ▒█████   ███▄    █     
▒██▒  ██▒ ██ ▀█   █  ▓█   ▀    ▓██ ▒ ██▒ ▓█   ▀ ▒██▀ ▀█ ▒██▒  ██▒ ██ ▀█   █     
▒██░  ██▒▓██  ▀█ ██▒ ▒███      ▓██ ░▄█ ▒ ▒███   ▒▓█    ▄▒██░  ██▒▓██  ▀█ ██▒    
▒██   ██░▓██▒  ▐▌██▒ ▒▓█  ▄    ▒██▀▀█▄   ▒▓█  ▄▒▒▓▓▄ ▄██▒██   ██░▓██▒  ▐▌██▒    
░ ████▓▒░▒██░   ▓██░▒░▒████    ░██▓ ▒██▒▒░▒████░▒ ▓███▀ ░ ████▓▒░▒██░   ▓██░    
░ ▒░▒░▒░ ░ ▒░   ▒ ▒ ░░░ ▒░     ░ ▒▓ ░▒▓░░░░ ▒░ ░░ ░▒ ▒  ░ ▒░▒░▒░ ░ ▒░   ▒ ▒     
  ░ ▒ ▒░ ░ ░░   ░ ▒░░ ░ ░        ░▒ ░ ▒░░ ░ ░     ░  ▒    ░ ▒ ▒░ ░ ░░   ░ ▒░    
░ ░ ░ ▒     ░   ░ ░     ░         ░   ░     ░   ░       ░ ░ ░ ▒     ░   ░ ░     
    ░ ░           ░ ░   ░         ░     ░   ░   ░ ░         ░ ░           ░     
EOF
echo -e "${BLUE}+ -- --=[Scanner by MRX${NC}"
echo -e "${YELLOW}+ -- --= Scanner OneRecon :)${NC}"
}

# Executando o banner
banner

# Verificando a entrada do domínio
read -p "Enter the domain: " domain

# Verificando se o domínio foi fornecido
if [ -z "$domain" ]; then
    echo -e "${RED}Error: Domain not provided.${NC}"
    exit 1
fi

# Criando pasta para o domínio
folder="$domain"
mkdir -p "$folder"

# Criando pasta domain alvo
echo "$domain" | httpx -ports '443,80,8080,8000,8888' -threads 100 | anew "$folder/live_subdomain.txt"

# Executando Naabu Portas Scan
echo -e "\e[33mRunning naabu...\e[0m"
naabu -list "$folder/live_subdomain.txt" -top-ports 100 -c 50 -o "$folder/PortScan.txt"

# filter subdomains by keywords
echo -e "\e[33mfilter subdomains by keywords...\e[0m"
cat "$folder/live_subdomain.txt" | egrep -i "internal|api|test|prod|private|secret|git|login|admin|staging|dev|jira|intranet|vip|portal|register|pass|reset|client|database|server|backup|Credential|database|docker|encryption|security|authorization|authentication|monitoring|logging|certificate|token|integration|endpoint|validation|configuration|deployment" > "$folder/active_priority.txt"
echo -e "\e[1;31m$(wc -l < "$folder/active_priority.txt")\e[0m"

# Extract .js Subdomains
echo -e "\e[33mExtract .js Subdomains...\e[0m"
cat "$folder/live_subdomain.txt" | getJS --complete | anew "$folder/JS1.txt"
echo -e "\e[1;31m$(wc -l < "$folder/JS1.txt")\e[0m"

# Executando gau para encontrar endpoints
echo -e "\e[33mFinding endpoints with gau...\e[0m"
cat "$folder/live_subdomain.txt" | gau --threads 10 --blacklist "$excluded_extentions" --o "$folder/EndpointsGau.txt"
echo -e "\e[1;31m$(wc -l < "$folder/EndpointsGau.txt")\e[0m"

# Executando waybackurls
echo -e "\e[33mExecutando waybackurls...\e[0m"
cat "$folder/live_subdomain.txt" | waybackurls > "$folder/EndpointsWay.txt"
echo -e "\e[1;31m$(wc -l < "$folder/EndpointsWay.txt")\e[0m"

# Executando gospider
echo -e "\e[33mExecutando gospider...\e[0m"
gospider -S "$folder/live_subdomain.txt" -c 10 -d 5 --blacklist ".(jpg|jpeg|gif|css|tif|tiff|png|ttf|woff|woff2|ico|pdf|svg)" --other-source | grep -e "code-200" | awk '{print $5}' | anew "$folder/EndpointsGos.txt"
echo -e "\e[1;31m$(wc -l < "$folder/EndpointsGos.txt")\e[0m"

# Executando hakrawler
echo -e "\e[33mExecutando hakrawler...\e[0m"
cat "$folder/live_subdomain.txt" | hakrawler -subs -u -t 10 | anew "$folder/EndpointsHakrawler.txt"
echo -e "\e[1;31m$(wc -l < "$folder/EndpointsHakrawler.txt")\e[0m"

# Executando cariddi
echo -e "\e[33mExecutando cariddi...\e[0m"
cat "$folder/live_subdomain.txt" | cariddi -intensive > "$folder/cariddi.txt"
echo -e "\e[1;31m$(wc -l < "$folder/cariddi.txt")\e[0m"

# Executando katana 
echo -e "\e[33mFinding endpoints with katana...\e[0m"
cat "$folder/live_subdomain.txt" | katana -f qurl -silent -o "$folder/Endpointskat.txt"
echo -e "\e[1;31m$(wc -l < "$folder/Endpointskat.txt")\e[0m"

# Removendo duplicatas usando uro
echo -e "\e[33mRemoving duplicats Endpoints...\e[0m"
cat "$folder/EndpointsGau.txt" "$folder/EndpointsWay.txt" "$folder/EndpointsGos.txt" "$folder/Endpointskat.txt" "$folder/EndpointsHakrawler.txt" "$folder/cariddi.txt" > "$folder/Endpoints1.txt"
cat "$folder/Endpoints1.txt" | uro | anew "$folder/EndpointsL.txt"
rm "$folder/EndpointsGau.txt" "$folder/EndpointsWay.txt" "$folder/EndpointsGos.txt" "$folder/Endpointskat.txt" "$folder/EndpointsHakrawler.txt" "$folder/cariddi.txt"
rm "$folder/Endpoints1.txt"
echo -e "\e[1;31m$(wc -l < "$folder/EndpointsL.txt")\e[0m"

# Executando grep
echo -e "\e[32mExecutando Grep arquivos...\e[0m"
cat "$folder/EndpointsL.txt" | grep -E "\.txt|\.log|\.cache|\.secret|\.db|\.backup|\.yml|\.gz|\.rar|\.zip|\.config" >> "$folder/arquivos.txt"

# Executando Gf Patterns
echo -e "\e[32mExecutando Gf lfi...\e[0m"
cat "$folder/EndpointsL.txt" | uro | gf lfi | anew "$folder/Lfi.txt"

echo -e "\e[32mExecutando Gf sqli...\e[0m"
cat "$folder/EndpointsL.txt" | uro | gf sqli | anew "$folder/sqli.txt"

echo -e "\e[32mExecutando Gf xss...\e[0m"
cat "$folder/EndpointsL.txt" | uro | gf xss | anew "$folder/xss.txt"

# Usando Gxss para enviar payloads para endpoints XSS potenciais
echo -e "\e[32mSending payloads with Gxss...\e[0m"
cat "$folder/xss.txt" | Gxss -p khXSS -o "$folder/XSS_Ref.txt"

echo -e "\e[32mExecutando Gf redirect...\e[0m"
cat "$folder/EndpointsL.txt" | gf redirect | anew "$folder/redirect.txt"

echo -e "\e[32mExecutando Gf rce...\e[0m"
cat "$folder/EndpointsL.txt" | uro | gf rce | anew "$folder/rce.txt"

echo -e "\e[32mExecutando Gf debug_logic...\e[0m"
cat "$folder/EndpointsL.txt" | uro | gf debug_logic | anew "$folder/debug_logic.txt"

echo -e "\e[32mExecutando Gf idor...\e[0m"
cat "$folder/EndpointsL.txt" | uro | gf idor | anew "$folder/idor.txt"

echo -e "\e[32mExecutando Gf interestingEXT...\e[0m"
cat "$folder/EndpointsL.txt" | uro | gf interestingEXT | anew "$folder/interestingEXT.txt"

echo -e "\e[32mExecutando Gf interestingparams...\e[0m"
cat "$folder/EndpointsL.txt" | uro | gf interestingparams | anew "$folder/interestingparams.txt"

echo -e "\e[32mExecutando Gf interestingsubs...\e[0m"
cat "$folder/EndpointsL.txt" | uro | gf interestingsubs | anew "$folder/interestingsubs.txt"

echo -e "\e[32mExecutando Gf ssti...\e[0m"
cat "$folder/EndpointsL.txt" | uro | gf ssti | anew "$folder/ssti.txt"

echo -e "\e[32mExecutando Gf ssrf...\e[0m"
cat "$folder/EndpointsL.txt" | uro | gf ssrf | anew "$folder/ssrf.txt"

echo -e "\e[32mExecutando Testes de Vulnerabilidade\e[0m"

# takeover vulnerabilities
echo -e "\e[32mExecutando takeover Vulnerabilit\e[0m"
cat "$folder/live_subdomains.txt" | nuclei -t ~/nuclei-templates/http/takeovers/ -o "$folder/takeover.txt"
echo -e "\e[1;31m$(wc -l < "$folder/takeover.txt")\e[0m"

# misconfigration
echo -e "\e[32mExecutando misconfiguration Vulnerabilit\e[0m"
cat "$folder/live_subdomains.txt" | nuclei -t ~/nuclei-templates/cors.yaml  -o "$folder/cors.txt" 

# cve,osint,tech
echo -e "\e[32mExecutando cve,osint Vulnerabilit\e[0m"
cat "$folder/live_subdomains.txt" | nuclei -tags cve,osint -o "$folder/CvOsvul.txt"

# passar caminho template open-redirect
echo -e "\e[32mExecutando open-redirect Vulnerabilit\e[0m"
cat "$folder/live_subdomains.txt" "$folder/redirect.txt" | anew "$folder/Redirect.txt"
cat "$folder/Redirect.txt" | nuclei -tags open-redirect -o "$folder/open-redirectVUL.txt" 
echo -e "\e[1;31m$(wc -l < "$folder/open-redirectVUL.txt")\e[0m"
rm "$folder/redirect.txt"

# crlfuzz
echo -e "\e[32mExecutando crlfuzz Vulnerabilit\e[0m"
cat "$folder/live_subdomains.txt" | crlfuzz -c 50 -s -o "$folder/crlfVul.txt"
echo -e "\e[1;31m$(wc -l < "$folder/crlfVul.txt")\e[0m"

# nuclei exposures JS
echo -e "\e[32mExecutando nuclei JS Vulnerabilit\e[0m"
cat "$folder/EndpointsL.txt" | grep -iE '.js'| grep -iEv '(.jsp|.json)' | anew "$folder/JS2.txt"
cat "$folder/JS1.txt" "$folder/JS2.txt" | anew "$folder/JS.txt"
nuclei -l "$folder/JS.txt" -t ~/nuclei-templates/http/exposures/ -o "$folder/js_Vul.txt"
rm "$folder/JS1.txt" "$folder/JS2.txt"

# nuclei Severity
echo -e "\e[32mExecutando nuclei Vulnerabilit\e[0m"
nuclei -l "$folder/live_subdomains.txt" -severity low,medium,high,critical -o "$folder/severityNUclei.txt" -H "User-Agent:Mozilla/5.0 (Android 4.4; Mobile; rv:41.0) Gecko/41.0 Firefox/41.0"

# nuclei sqli
echo -e "\e[32mExecutando nuclei Sqli\e[0m"
nuclei -l "$folder/sqli.txt" -tags sqli -o "$folder/sqliVUL.txt"

# nuclei lfi
echo -e "\e[32mExecutando nuclei Lfi\e[0m"
nuclei -l "$folder/Lfi.txt" -tags lfi -o "$folder/lfiVUL.txt"

# nuclei ssrf
echo -e "\e[32mExecutando nuclei SSRF\e[0m"
nuclei -l "$folder/ssrf.txt" -tags ssrf -o "$folder/SSRFVUL.txt"

# nuclei rce
echo -e "\e[32mExecutando nuclei RCE\e[0m"
nuclei -l "$folder/rce.txt" -tags rce -o "$folder/RCEVUL.txt"

# dalfox
echo -e "\e[32mExecutando dalfox Vulnerabilit\e[0m"
dalfox file "$folder/XSS_Ref.txt" --skip-mining-all --waf-evasion -o "$folder/Vulnerable_XSS.txt"

# Arquivos rápidos e suculentos com lista de palavras tomnomnom e ffuf
echo -e "\e[33mffuf Arquivos suculentos...\e[0m"
ffuf -w ~/wordlists/directory-list-lowercase-2.3-medium.txt -c -t 10 -recursion -u "https://$domain/_FUZZ" -o "$folder/ffuf.txt"

echo -e "\e[34mScanner Concluído\e[0m"



