# Encrypt files with password using gpg 
cat <filename>|gpg -ac -o-|curl -X PUT --upload-file "-" https://transfer.sh/<filename>

# Download and decrypt 
curl https://transfer.sh/<hash>/<filename>|gpg -o- > <filename>
