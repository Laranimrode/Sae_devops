#!/bin/bash
mkdir -p pages
TEMPLATE=$(cat pages/room-example.html)

create_room() {
  FILE="pages/$1.html"
  TITLE="$2"
  if [ ! -f "$FILE" ]; then
    echo "$TEMPLATE" | sed "s|<h1>.*</h1>|<h1>$TITLE</h1>|" > "$FILE"
    echo "Created room $FILE"
  fi
}

create_special() {
  FILE="pages/$1.html"
  TITLE="$2"
  if [ ! -f "$FILE" ]; then
    echo "<h1>$TITLE</h1>" > "$FILE"
    echo "Created special $FILE"
  fi
}

# Partie I
create_room "offensive-security" "Offensive Security Intro"
create_room "defensive-security" "Defensive Security Intro"
create_room "search-skills" "Search Skills"
create_room "linux-part-1" "Linux Fundamentals Part 1"
create_room "windows-1" "Windows Fundamentals 1"
create_room "windows-2" "Windows Fundamentals 2"
create_room "windows-3" "Windows Fundamentals 3"
create_room "ad-basics" "Active Directory Basics"
create_room "windows-cmd" "Windows Command Line"

# Partie II
create_room "careers-in-cyber" "Careers in Cyber"
create_room "what-is-networking" "What is Networking?"
create_room "dns-in-detail" "DNS in detail"
create_room "http-in-detail" "HTTP in Detail"
create_room "how-websites-work" "How Websites Work"
create_room "putting-it-together" "Putting it all together"

# Partie III
create_room "networking-concepts" "Networking Concepts"
create_room "crypto-basics" "Cryptography Basics"
create_room "moniker-link" "Moniker Link (CVE-2024-21413)"
create_room "blue" "Blue"
create_room "web-app-basics" "Web Application Basics"
create_room "owasp-iaaa" "OWASP: IAAA Failures"
create_room "owasp-design" "OWASP: Application Design Flaws"
create_room "owasp-data" "OWASP: Insecure Data Handling"
create_room "common-attacks" "Common Attacks"

# Spéciales
create_special "firebase" "Services Firebase"
create_special "structure" "Structure de page"
create_special "orga" "Organisation Groupe"
create_special "vpn" "Connexion VPN"
create_special "lotl" "Living Off The Land"
create_special "mitm" "Man In The Middle"
create_special "profils" "Profils des membres"

echo "Done!"
