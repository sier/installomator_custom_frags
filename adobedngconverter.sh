# Adobe DNG Converter Custom Installomator Fragment

name="Adobe DNG Converter"
type="pkgInDmg"
downloadURL="https://www.adobe.com/go/dng_converter_mac"
expectedTeamID="JQ525L2MZD"

# Dynamically extract version from Adobe's redirect URL
# E.g., extracts '16_2' or '16_2_1' from the location header and converts it to '16.2' or '16.2.1'
appNewVersion=$(curl -sIL "$downloadURL" | grep -i "^location:" | tail -1 | grep -oE "[0-9]+_[0-9]+(_[0-9]+)?" | tr '_' '.')

# Locate the PKG installer dynamically inside the mounted DMG volume
pkgName=$(curl -sIL "$downloadURL" | grep -i "^location:" | tail -1 | sed -e 's|.*/||' -e 's/\.dmg.*//').pkg
