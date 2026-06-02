# Navicat 17 for MySQL Custom Installomator Fragment

name="Navicat for MySQL"
type="dmg"
downloadURL="https://dn.navicat.com/download/navicat17_mysql_en.dmg"
expectedTeamID="VH7G2MRF27"

# Natively tell Installomator what the target app name is inside the DMG
appName="Navicat for MySQL.app"

# Dynamic version check scraping Navicat's release notes
appNewVersion=$(curl -fsL "https://www.navicat.com/en/products/navicat-for-mysql-release-note#M" | grep "Navicat for MySQL" | grep "(macOS)" | grep "version" | grep -oE "[0-9]{2,}\.[0-9]+\.[0-9]+" | sort -V | tail -1)
