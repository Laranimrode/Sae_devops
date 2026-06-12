# Sae_devops

## Description

Ce projet est un site web pédagogique dédié à l'apprentissage de la cybersécurité. Il regroupe une série de pages thématiques couvrant les fondamentaux du réseau, du système, du web et de la sécurité offensive/défensive, dans le cadre d'une SAE (Situation d'Apprentissage et d'Évaluation) DevOps.

## Structure du projet

```
SAE_DEVOPS/
├── css/
│   └── styles.css          # Feuille de style globale
├── js/
│   ├── include.js          # Gestion des inclusions de partials (header/footer)
│   └── router.js           # Gestion de la navigation entre les pages
├── pages/                   # Toutes les pages de contenu (cours, fiches, exemples)
├── partials/                # Composants HTML réutilisables (header, footer, nav...)
├── screen/                  # Captures d'écran utilisées dans les tutoriels (VPN, RDP, connexion...)
├── firebase.json            # Configuration de déploiement Firebase
├── generate_pages.sh        # Script de génération automatique des pages
├── index.html               # Page d'accueil du site
└── README.md
```

## Contenu pédagogique

Le dossier `pages/` contient des ressources organisées par thématiques :

### Réseau & Infrastructure
- `networking-concepts.html`, `network-fundamentals.html`, `what-is-networking.html`
- `dns-in-detail.html`, `http-in-detail.html`, `vpn.html`

### Systèmes
- `linux-part-1.html`, `windows-1.html`, `windows-2.html`, `windows-3.html`, `windows-cmd.html`

### Sécurité offensive / défensive
- `offensive-security.html`, `defensive-security.html`
- `exploitation-basics.html`, `metasploit-intro.html`, `Metasploit.html`
- `common-attacks.html`, `mitm.html`, `crypto-basics.html`

### OWASP
- `owasp-data.html`, `owasp-design.html`, `owasp-iaaa.html`

### Cybersécurité & Carrière
- `intro-cyber-security.html`, `cyber-security-journey.html`, `careers-in-cyber.html`, `ad-basics.html`

### Firebase
- `firebase.html`, `firebase-services.html`

### Organisation / Équipe
- `team.html`, `group-organisation.html`, `orga.html`, `profils.html`, `member-profile.html`, `structure.html`, `page-structure.html`, `putting-it-together.html`, `room-example.html`, `search-skills.html`

## Images

Le dossier `screen/` contient les captures d'écran illustrant les tutoriels :
- `Connecter.png`
- `RDP.png`
- `VPN.png`

## ⚙️ Technologies utilisées

- **HTML / CSS** pour la structure et le style des pages
- **JavaScript** pour la navigation dynamique (`router.js`) et l'inclusion de composants (`include.js`)
- **Firebase** pour l'hébergement et les services backend

## Installation et lancement

1. Cloner le dépôt 
   git clone https://github.com/Laranimrode/Sae_devops
   cd Sae_devops


2. Lancer un serveur local

   npx serve


3. Pour déployer sur Firebase 

   firebase deploy


## Équipe

Verstaevel Valentin
Fremy Lara
Lusten Antoine
Dartois Samuel

