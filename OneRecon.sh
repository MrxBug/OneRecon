#!/bin/bash

# Definindo cores
RED='\033[0;31m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # Sem cor

# Banner
banner(){
cat << "EOF"
__,,aadd888888888baa,_
,ad88888888888888888888888a,
,d88888888888888888888888888888a,
,d888888888888888888888888888888888b,
,d888888888888888888888888888888888888b
d88888888888888888888888888888888888888b
8888888888888888888888888888888888888888,
,8888888888888888888888888888888888888888b
d88888888888888888888888888888888888888888,
888888888888888888888888888888P'`888888888b
,88888888888888888888P"88P"Y888b  Y888888888,
,d888888888888888888P" d8P'  "88P   "Y8888888b
d88888888888888888P"   Y"    ,8P      88888888
;88888888888888888P'   '""""  Y" '"""" 8888888P
I88888888888888888'    ,aaa,    /,aaa, 8888888'
I8888888888\888888     `b8d'   | `b8d' 888888P 
`Y8888888888\88888             (      ,888888' 
`Y8888888888)8888          (___)     I88888' 
"888888888|8888,                  ,8888P'
"8888888|8888I       ,ad8a8ba, ,8888"
"88888|88888,       "Y888P" ,888P'
`8888|8888`Ya,          ,ad888P_
8888|8888  `"Yba,,,,,,d88888888888baaa,,_
I888|8888      `""Y88888888P"'     `""""Y8baa,,_
8888'8888,        ,8888888P               `"""Y8baa,,_
,888P Y888b        I8888888'                      `"""8baa,_
,8Y8P' `Y888,       88888888                             `""YYaa,_
"',P'    `"Y8,      I8888888,                                 `""Yba_
,d'        `"       Y888888b                                      `"b
,d'                   Y888888b,           _______                    8
,8'                     Y8888888ba,,__,aad88b"""YYY8bba,,_            8
dP                       "88888888888888888888a,     `"""Yba,         8
8I                        `888888888888888888888,          "b         8
8b                         `88888888888888888888b           8        ,P
I8,                         `Y8888888888888888888           8        d'
`88,                         `Y88888888888888888P           8        8
8`Yb                         `Y888888888888888P'           8       ,P
8 `Yb        Y,               `8888888888888P"             8       d'
8  `Yb       `8,               `Y88888888888               8       8
8   `Yb       `8,               `Y8888888888               8      ,P
8    `Yb,      `8,               `8888888888               8      d'
8      "Yb,     `Yb,              8888888888               8     ,P
8        "8b,     "Yb,           ,8888888888               8    ,d'
8         8 "Ya,    `"8,         d8888888888,              8    d'
8         8   `"Ya,    "Ya_     ,88888888P"'Yb,            8   ,P
8         8      `"Ya,_  `"8a, ,d8888P"'    ,Y8,          ,8   d'
8         8          `"Yb,_ "Y888P"'    ,ad88888b,       ,8'  ,P
8         "ba,_          `"Ybad"    ,ad88888888888baaaadP"  ,aP'
8,           `"Yba,_        ,P' ,ad8888888888P"""""'      ,dP'
`8b,             `""Ya,    ,da8888888888888888bbbaaaaaaadP"'
"Y8a,              `"Ya,,d88888888888888888888888888b
   `"Ya,._            `Y888888888888888888888888888888,
       `""Yba,_       ,d8888888888888888888888888888888b
            `""YYaa,,,d8888888888888888888888888888888888,
                  `"d8888888888888888888888888888888888888b
                  ,d8888888888888888888888888888888888888888,
                 a8888888888888888888888888888888888888888888b
               ,d8888888888888888888888PP"":::::::::::""Y888888,
              ,d8888888888888888PP""::::::::::::::::::::::888888b,
             d888888888888P"":::::::::::::::::::::::::::::Y8888888b
            d888888888P:;P:::::::::::::::::::::::::::::::::88888888b
          ,88888888P"::;P::::::::::::::::::::::::::::::::::888888888,
        ,d8888888P:::::d:::::::::::::::::::::::::::::::::::888888888b
       a8888888P:::::::8:::::::::::::::MrxBug::::::::::::::I888888888
     ,d8888888"::::::::8:::::::::::::::Sexxxxyy::::::::::::I888888888
    ,d8888888P:::::::::8;::::::::::::::::::::::::::::::::::I888888888
   ,d88888888::::::::::Yb;:::::::::::::::::::::::::::::::::I88888888P
  ,d888888888:::::::::::Yb:::::::::::::::::::::::::::::::::I88888888'
  d8888888888;:::::::::::Yb::::::::::::::::::::::::::::::::I8888888'
 ,88888888888b::::::::::::"8;::::::::::::::::::::::::::::::8888888P
 d888888888888b:::::::::::::"Ya;::::::::::;;aa;::::::::::::888888P'
 88888888888888b;:::::::::::::`YbbaaaadddPP"":::::::::::::;88888"
 8888888888888888b;:::a;;;::;ad"8:::::::::::::::::::::::::d88P"
 88888888888888888Y;::::""""":::8:::::::::::::::::::::::::8"
 Y88888888888888888Y;:::::::::::8:::::::::::::::::::::::::8
 `888888888888888888b:::::::::::8:::::::::::::::::::::::::8
  Y888888888888888888:::::::::::8::::::::::::::::::::::::;P
   `"Y888888888888888:::::::::::8::::::::::::::::::::::::d'
      "Y8888P"Y888888:::::::::::8::::::::::::::::::::::::8
        `"'    `"'  8:::::::::::8::::::::::::::::::::::::8
                    8:::::::::::8::::::::::::::::::::::::8
                    8:::::::::::8;::::::::::::::::::::::;P
                    Y;::::::::::Ib::::::::::::::::::::::d'
                    `b:::::::::::8::::::::::::::::::::::8
                     8:::::::::::8:::::::::::::::::::::;P
                     Y;::::::::::8:::::::::::::::::::::d'
                     `b::::::::::Y;::::::::::::::::::::8
                      `b::::::::::b:::::::::::::::::::;P
                       Y;:::::::::8:::::::::::::::::::d'
                       `b:::::::::8:::::::::::::::::::8
                        Y;::::::::Y;:::::::::::::::::;P
                        `b:::::::::b::::::::::::::::;d'
                         Y;::::::::8:::::::::::::::;d'
                         `b::::::::8:::::::::::::::d'
                          Y;:::::::8::::::::::::::;P
                          `b:::::::8::::::::::::::d'
                           8:::::::8:::::::::::::;P
                           8:::::::8:::::::::::::d'
                           8::::::;8:::::::::::::8
                           8::::::dP::::::::::::;P
                           8:::::;P:::::::::::::d'
                          ,P:::::d::::::::::::::8
                          d:::::;P::::::::::::::8
                         ,P:::::d:::::::::::::::8
                         d:::::;P:::::::::::::::8
                        d::::::d::::::::::::::::8
                       d:::::::8::::::::::::::::Y,
                      ,P::::::;P:::::::::::::::::b
                     ,P:::::::d::::::::::::::::::8
                    ,d::::::::8::::::::::::::::::8
                   ,d::::::::;P::::::::::::::::::8
                   d:::::::::d:::::::::::::::::::8
                   8:::::::::8:::::::::::::::::::8
                  ,P:::::::::8:::::::::::::::::::8
                  d::::::::::8:::::::::::::::::::8
                  8::::::::::8:::::::::::::::::::8
                 ,P::::::::::8:::::::::::::::::::8
                 d:::::::::::8:::::::::::::::::::8
                 8:::::::::::8:::::::::::::::::::8
                 8:::::::::::8:::::::::::::::::::8
                 8:::::::::::8::::::::::::::::::;P
                 8:::::::::::8::::::::::::::::::d'
                 8:::::::::::8::::::::::::::::::8
                 8:::::::::::Y;:::::::::::::::::8
                 8::::::::::::b:::::::::::::::::8
                 8::::::::::::8;:::::::::::::::;P
                 8::::::::::::8I:::::::::::::::d'
                 8::::::::::::Yb;::::::::::::::8
                 8::::::::::::8"b::::::::::::::8
                 8::::::::::::8 8;::::::::::::;P
                 8:::::::::::;P `b::::::::::::d'
                 Y;::::::::::d'  Y;:::::::::::8
                 `b::::::::::8   `b:::::::::::8
                  8::::::::::8    8:::::::::::8
                  8:::::::::;P    8:::::::::::8
                  8:::::::::d'    8::::::::::;P
                  Y;::::::::8     8::::::::::d'
                  `b::::::::8     8::::::::::8
                   8:::::::;P     8::::::::::8
                   8:::::::8'     8:::::::::;P
                   8:::::::8      8:::::::::d'
                   8:::::::8      8:::::::::8
                   8:::::::8      8:::::::::8
                   8:;;::::8      8:::::::::8
                  ,88888b;:8      8:::::::::8
                 ,d8888888b8      8:::::::::8
                ,d8888888888    ,d8;;:::::::Y,
                d88888888888  ,d888888b;:::::b
               ,888888888888 ,d88888888b;::::8
               d888888888888 d8888888888b::::8
               Y888888888888 888888888888;:::8
               `888888888888 888888888888b:::8
                8888888:8888 8888888888888:::8
                8888"ZZZ:888 Y888888888888:::Y,
                888' ZZZ:888 `888P" `Y8888::::b
                88P  ZZZ:888  888'    8888::::8
                88'  ZZZ:888  Y88     8888;:::8
                88   ZZZ:888, `88     Y888b:::8
                88   ZZZ:888b  88     `8888:::8
                ""   ZZZ:8888, ""      8888;::Y,
                     `ZZZ:8888b,       8888b;::b,
                       "ZZZ:8888       Y888888888b,_
                         `""""""        "Y88888888888b,
                                          `"Y8888888888
EOF
echo -e "${BLUE}+ -- --=[Scanner by MRX${NC}"
echo -e "${YELLOW}+ -- --= Scanner FULL :)${NC}"
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
echo "$domain" | httpx | anew "$folder/live_subdomain.txt"

# Extract .js Subdomains
echo -e "\e[33mExtract .js Subdomains...\e[0m"
cat "$folder/live_subdomain.txt" | getJS --complete | anew "$folder/JS1.txt"
echo -e "\e[1;31m$(wc -l < "$folder/JS1.txt")\e[0m"

# Executando gau para encontrar endpoints
echo -e "\e[33mFinding endpoints with gau...\e[0m"
cat "$folder/live_subdomain.txt" | gau | egrep -v '(.jpg|.jpeg|.gif|.css|.tif|.tiff|.png|.ttf|.wolf|.woff2|.ico|.pdf|.svg)' > "$folder/EndpointsGau.txt"
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

# Executando Gf Patterns
echo -e "\e[32mExecutando Gf lfi...\e[0m"
cat "$folder/EndpointsL.txt" | uro | gf lfi | sed "s/'\|(\|)//g" | qsreplace "FUZZ" 2> /dev/null | anew -q "$folder/Lfi.txt"

echo -e "\e[32mExecutando Gf sqli...\e[0m"
cat "$folder/EndpointsL.txt" | uro | gf sqli | sed "s/'\|(\|)//g" | qsreplace "FUZZ" 2> /dev/null | anew -q "$folder/sqli.txt"

echo -e "\e[32mExecutando Gf xss...\e[0m"
cat "$folder/EndpointsL.txt" | uro | gf xss | anew -q "$folder/xss1.txt"
nuclei -l "$folder/live_subdomain.txt" -t ~/nuclei-templates/xssparameter1.yaml -o "$folder/xssparameter1.txt"
cat "$folder/xss1.txt" "$folder/xssparameter1.txt" | anew "$folder/xss.txt"
rm "$folder/xss1.txt" "$folder/xssparameter1.txt"

# Usando Gxss para enviar payloads para endpoints XSS potenciais
echo -e "\e[32mSending payloads with Gxss...\e[0m"
cat "$folder/xss.txt" | Gxss -p khXSS -o "$folder/XSS_Ref.txt"

echo -e "\e[32mExecutando Gf redirect...\e[0m"
cat "$folder/EndpointsL.txt" | gf redirect | anew -q "$folder/redirect.txt"

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
# criar caminho e add o arquivo abaixo
#https://raw.githubusercontent.com/haccer/subjack/master/fingerprints.json
echo -e "\e[32mExecutando takeover Vulnerabilit\e[0m"
subjack -w "$folder/live_subdomain.txt" -t 20 -a -o "$folder/takeover.txt" -ssl
echo -e "\e[1;31m$(wc -l < "$folder/takeover.txt")\e[0m"

# openredirect
# passar caminho template open-redirect
echo -e "\e[32mExecutando open-redirect Vulnerabilit\e[0m"
nuclei -l "$folder/redirect.txt" -t ~/nuclei-templates/http/vulnerabilities/generic/open-redirect-generic.yaml -o "$folder/open-redirectVUL.txt" 
echo -e "\e[1;31m$(wc -l < "$folder/open-redirectVUL.txt")\e[0m"

# crlfuzz
echo -e "\e[32mExecutando crlfuzz Vulnerabilit\e[0m"
crlfuzz -l "$folder/live_subdomain.txt" -c 50 -s -o "$folder/crlfVul.txt"
echo -e "\e[1;31m$(wc -l < "$folder/crlfVul.txt")\e[0m"

# dalfox
echo -e "\e[32mExecutando dalfox Vulnerabilit\e[0m"
dalfox file "$folder/XSS_Ref.txt" --skip-mining-all --waf-evasion -o "$folder/Vulnerable_XSS.txt"

# nuclei exposures JS
echo -e "\e[32mExecutando nuclei JS Vulnerabilit\e[0m"
cat "$folder/EndpointsL.txt" | grep -iE '.js'| grep -iEv '(.jsp|.json)' | anew "$folder/JS2.txt"
cat "$folder/JS1.txt" "$folder/JS2.txt" | anew "$folder/JS.txt"
nuclei -l "$folder/JS.txt" -t ~/nuclei-templates/http/exposures/ -o "$folder/js_Vul.txt"
rm "$folder/JS1.txt" "$folder/JS2.txt"

# nuclei
echo -e "\e[32mExecutando nuclei Vulnerabilit\e[0m"
nuclei -l "$folder/live_subdomain.txt" -severity low,medium,high,critical -o "$folder/severityNUclei.txt" -H "User-Agent:Mozilla/5.0 (Android 4.4; Mobile; rv:41.0) Gecko/41.0 Firefox/41.0"

# Arquivos rápidos e suculentos com lista de palavras tomnomnom e ffuf
echo -e "\e[33mffuf Arquivos suculentos...\e[0m"
ffuf -w ~/wordlists/common-paths-tomnomnom.txt -u "https://$domain/FUZZ" -o "$folder/ffuf.txt"

echo -e "\e[34mScanner Concluído\e[0m"



