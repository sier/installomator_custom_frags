# Insta360 Studio Custom Installomator Fragment
# Scrapes the official download URL dynamically using the Homebrew API

name="Insta360 Studio"
type="pkgInZip"
expectedTeamID="UBX9CH9GDX"

# Extract the dynamic download URL directly from Homebrew's API JSON
downloadURL=$(curl -fsL https://formulae.brew.sh/api/cask/insta360-studio.json | sed -n 's/.*"url":"\([^"]*\)".*/\1/p')

# Extract the version number directly from the discovered download URL
# (e.g., pulling "5.4.1" from .../Insta360Studio2026_5.4.1_rc_signed.pkg.zip)
appNewVersion=$(echo "$downloadURL" | grep -oE '[0-9]+\.[0-9]+\.[0-9]+')
