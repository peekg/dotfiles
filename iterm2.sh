# defaults read com.googlecode.iterm2

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

/usr/libexec/PlistBuddy -c 'Set :PrefsCustomFolder '"$SCRIPT_DIR" ~/Library/Preferences/com.googlecode.iterm2.plist
/usr/libexec/PlistBuddy -c 'Set :SUEnableAutomaticChecks 1' ~/Library/Preferences/com.googlecode.iterm2.plist
/usr/libexec/PlistBuddy -c 'Set :LoadPrefsFromCustomFolder 1' ~/Library/Preferences/com.googlecode.iterm2.plist
