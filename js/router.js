const allowedPages = [
 "home",
 "team",
 "room-example",
 "offensive-security",
 "defensive-security",
 "search-skills",
 "linux-part-1",
 "windows-1",
 "windows-2",
 "windows-3",
 "ad-basics",
 "windows-cmd",
 "careers-in-cyber",
 "what-is-networking",
 "dns-in-detail",
 "http-in-detail",
 "how-websites-work",
 "putting-it-together",
 "networking-concepts",
 "crypto-basics",
 "moniker-link",
 "blue",
 "web-app-basics",
 "owasp-iaaa",
 "owasp-design",
 "owasp-data",
 "common-attacks",
 "firebase",
 "structure",
 "orga",
 "vpn",
 "lotl",
 "mitm",
 "profils"
];

function loadPage(page) {
 if (!allowedPages.includes(page)) {
 page = "home";
 }
 fetch(`pages/${page}.html`)
 .then(response => {
 if (!response.ok) {
 throw new Error("Page non trouvée");
 }
 return response.text();
 })
 .then(data => {
 document.getElementById("content").innerHTML = data;
 })
 .catch(() => {
 document.getElementById("content").innerHTML =
 "<h1>404 - Page non trouvée</h1>";
 });
}

function getPageFromURL() {
 const params = new URLSearchParams(window.location.search);
 return params.get("page") || "home";
}

document.addEventListener("DOMContentLoaded", () => {
 const page = getPageFromURL();
 loadPage(page);
});